import axios from 'axios';
import ChatBox from '../../components/chatapp/ChatBox';
import Conversation from '../../components/chatapp/Conversation';
import ConversationBox from '../../components/chatapp/ConversationBox';
import Layout from '../../components/Layouts/ChatLayout';
import { fetcher, getUserConversations, getUserCountConversations, getUserNotifications } from '../../lib/api';
import { getTokenFromServerCookie } from '../../lib/auth';
import { useUser } from '../../lib/AuthContext';

export default function Mensajes({ user, conversation, messages, meta }) {

    // console.log(meta)
    // console.log(conversation.data.attributes.members)  

    // if (isPageLoading) {
    //     return <h1> load</h1>
    // }
    let { attributes: { members: { data: members } } } = conversation
    const mensajes = messages?.map((message) => {
        let { attributes: { sender: { data: userSender } } } = message

        let sender = {
            id: userSender?.id,
            name: userSender?.attributes.name,
            slug: userSender?.attributes.slug,
            avatar: userSender?.attributes.avatar,
            firstName: userSender?.attributes.firstName,
            lastName: userSender?.attributes.lastName,
        }
        let mensaje = {
            id: message.id,
            text: message.attributes.text,
            createdAt: message.attributes.createdAt,
            updatedAt: message.attributes.updatedAt,
            sender: sender
        }
        return mensaje

    })
    // console.log('sender', mensajes)
    let userConversation = members.find((member) => {
        if (member.id !== user.id) {
            return member
        }
        else return
    })
    userConversation = {
        id: userConversation.id,
        name: userConversation.attributes.name,
        slug: userConversation.attributes.slug,
        avatar: userConversation.attributes.avatar,
        firstName: userConversation.attributes.firstName,
        lastName: userConversation.attributes.lastName,
        aboutme: userConversation.attributes.aboutme,
    }
    return (
        <Layout user={user}>
            <div className='flex h-full  md:flex-auto md:flex-row justify-start rounded-sm border-0  border-gray-900 dark:border-gray-100 border-opacity-10 dark:border-opacity-10 md:border-0 w-full '>
                <div className='hidden md:flex w-full md:w-96 justify-center  border-gray-900 dark:border-gray-100 md:border-r border-opacity-10 dark:border-opacity-10   '>
                    <ConversationBox />

                </div>
                <div className='h-full pb-2 w-full bg-gray-300 dark:bg-gray-700 flex items-center justify-center '>
                    {/* <div className='text-5xl text-gray-700 dark:text-gray-300 '> Selecciona una conversacion </div> */}
                    <ChatBox userReciever={userConversation} messages={mensajes} />
                </div>
            </div>
        </Layout>
    )

}

export async function getServerSideProps({ req, query }) {
    const { conversationId } = query;
    const jwt = getTokenFromServerCookie(req);
    const qs = require('qs');

    if (!jwt) {
        return {
            redirect: {
                destination: '/',
            },
        };
    } else {
        const queryuser = qs.stringify({
            populate: {
                role: true,
                localidad: true,

                provincia: true,

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

        const queryconversations = qs.stringify({
            populate: {
                members: {
                    fields: ['id', 'name', 'slug', 'avatar', 'firstName', 'lastName', 'aboutme']
                },
            }

        }, {
            encodeValuesOnly: true, // prettify URL
        });

        const { data: conversation } = await fetcher(
            `${process.env.NEXT_PUBLIC_STRAPI_URL}/conversations/${conversationId}?${queryconversations}`,
            {
                headers: {
                    Authorization: `Bearer ${jwt}`,
                },
            }
        );

        const querymessages = qs.stringify({
            sort: ['createdAt:desc'],
            filters: {
                conversation: {
                    id: {
                        $eq: conversationId,
                    }
                },

            },
            populate: {
                sender: {
                    fields: ['id', 'name', 'slug', 'avatar', 'firstName', 'lastName', 'aboutme']
                }
            },
            pagination: {
                limit: 15,
            },
        }, {
            encodeValuesOnly: true, // prettify URL
        });

        const { data: messages, meta } = await fetcher(
            `${process.env.NEXT_PUBLIC_STRAPI_URL}/messages?${querymessages}`,
            {
                headers: {
                    Authorization: `Bearer ${jwt}`,
                },
            }
        );
        messages.reverse()
        user.countConversations = await getUserCountConversations(jwt, user.id)
        user.notifications = await getUserNotifications(jwt, user.id)
        return {
            props: {
                user, conversation, messages, meta
            },
        };
    }
}