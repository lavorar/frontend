import { useRouter } from 'next/router';
import ChatBox from '../../components/chatapp/ChatBox';
import Conversation from '../../components/chatapp/Conversation';
import Layout from '../../components/Layouts/ChatLayout';
import { fetcher } from '../../lib/api';
import { getTokenFromServerCookie } from '../../lib/auth';
import axios from 'axios';

export default function Mensajes({ user, conversation }) {

    const router = useRouter()
    let { userReciever } = router.query
    userReciever = JSON.parse(userReciever)
    const messages = []
    // console.log(conversation.data.attributes.members)    

    // console.log(conversation.data.attributes.members)    


    // console.log('sender', mensajes)   

    user.conversations.map((conversation) => {
        let members = conversation.members.filter((member) => { return member.id !== user.id })
        conversation.user = members[0]
        if (userReciever.id === conversation.user.id) {
            router.push(`/mensajes/${conversation.id}`)
        }
        return conversation
    })
    return (
        <Layout user={user}>
            <div className='flex h-full  md:flex-auto md:flex-row justify-start rounded-sm border-0 md:border border-gray-900 dark:border-gray-100 border-opacity-10 dark:border-opacity-30  w-full '>
                <div className='hidden md:flex w-full md:w-96 justify-center  border-gray-900 dark:border-gray-100 md:border-r border-opacity-30 dark:border-opacity-30   '>
                    <div className='w-full  flex-col '>
                        {
                            user?.conversations.map((conversation) => (
                                <Conversation key={conversation.id} user={conversation?.user} conversationid={conversation.id} />
                            ))
                        }
                    </div>

                </div>
                <div className='h-full pb-2 w-full bg-gray-300 dark:bg-gray-700 flex items-center justify-center '>
                    {/* <div className='text-5xl text-gray-700 dark:text-gray-300 '> Selecciona una conversacion </div> */}
                    <ChatBox userReciever={userReciever} messages={messages} />
                </div>
            </div>
        </Layout>
    )

}

export async function getServerSideProps({ req, query }) {
    const { userReciever } = query;
    const jwt = getTokenFromServerCookie(req);
    const qs = require('qs');

    if (!jwt) {
        return {
            redirect: {
                destination: '/',
            },
        };
    }
    else {

        if (!userReciever) {
            return {
                redirect: {
                    destination: '/mensajes',
                },
            };
        }

        const queryuser = qs.stringify({
            populate: {
                role: true,
            }
        }, {
            encodeValuesOnly: true, // prettify URL
        });
        const user = await fetcher(
            `${process.env.NEXT_PUBLIC_STRAPI_URL}/users/me?${queryuser}`,
            {
                headers: {
                    Authorization: `Bearer ${jwt}`,
                },
            }
        );

        const querynotification = qs.stringify({
            sort: ['review_updatedAt:desc'],
            populate: {
                user_request: {
                    fields: ['id', 'name', 'slug', 'avatar', 'firstName', 'lastName']
                }
            },
            filters: {
                user: user.id,
            },
            pagination: {
                limit: 5,
            },
        }, {
            encodeValuesOnly: true, // prettify URL
        });

        const { data: { data: notifications } } = await axios.get(`${process.env.NEXT_PUBLIC_STRAPI_URL}/notifications?${querynotification}`, {
            headers: {
                Authorization: `Bearer ${jwt}`,
            },
        })
        const noti = notifications.map(({ attributes, id }) => {
            let { user_request: { data: userdata } } = attributes
            let user = {
                id: userdata.id,
                name: userdata.attributes.name,
                Slug: userdata.attributes.Slug,
                avatar: userdata.attributes.avatar,
                firstName: userdata.attributes.firstName,
                lastName: userdata.attributes.lastName
            }

            return {
                id: id,
                type: attributes.type,
                read: attributes.read,
                createdAt: attributes.createdAt,
                updatedAt: attributes.updatedAt,
                score: attributes.score,
                comment: attributes.comment,
                rejected: attributes.rejected,
                acepted: attributes.acepted,
                review_updatedAt: attributes.review_updatedAt,
                user_request: user
            }
        })

        const queryconversations = qs.stringify({
            populate: {
                members: {
                    filters: {
                        id: {
                            $ne: user.id
                        }
                    }
                }
            },
            filters: {
                members: user.id,
            },
            pagination: {
                limit: 10,
            },
        }, {
            encodeValuesOnly: true, // prettify URL
        });
        const { data: { data: conversationsData } } = await axios.get(`${process.env.NEXT_PUBLIC_STRAPI_URL}/conversations?${queryconversations}`, {
            headers: {
                Authorization: `Bearer ${jwt}`,
            }
        })

        const conversations = conversationsData.map(({ attributes, id }) => {
            let { members: { data: member } } = attributes
            let user = {
                id: member[0].id,
                name: member[0].attributes.name,
                Slug: member[0].attributes.Slug,
                avatar: member[0].attributes.avatar,
                firstName: member[0].attributes.firstName,
                lastName: member[0].attributes.lastName
            }
            return {
                id: id,
                createdAt: attributes.createdAt,
                updatedAt: attributes.updatedAt,
                user: user
            }
        })

        user.conversations = conversations
        user.notifications = noti

        return {
            props: {
                user
            },
        };
    }
}