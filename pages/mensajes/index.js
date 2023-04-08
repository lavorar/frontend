import axios from 'axios';
import ChatBox from '../../components/chatapp/ChatBox';
import Conversation from '../../components/chatapp/Conversation';
import Layout from '../../components/Layouts/ChatLayout';
import { fetcher, getUser, getUserConversations, getUserCountConversations, getUserNotifications } from '../../lib/api';
import { getTokenFromServerCookie } from '../../lib/auth';
import { useUser } from '../../lib/AuthContext';
import ConversationBox from '../../components/chatapp/ConversationBox';
import { useQuery } from 'react-query';


export default function Mensajes({ user }) {

    return (
        <Layout user={user}>
            <div className='flex h-full  md:flex-auto md:flex-row justify-start rounded-sm border border-gray-900 dark:border-gray-100 border-opacity-30 dark:border-opacity-30  w-full '>
                <div className='flex w-full md:w-96 justify-center  border-gray-900 dark:border-gray-100 md:border-r border-opacity-30 dark:border-opacity-30  '>
                    <div className='w-full flex flex-col'>
                        {/* {
                            conversations.map((conversation) => (
                                <Conversation key={conversation.id} user={conversation?.user} conversationid={conversation.id} />
                            ))
                        } */}
                        <ConversationBox />
                    </div>

                </div>
                <div className='p-2 w-full bg-gray-300 dark:bg-gray-700 hidden sm:flex items-center justify-center '>
                    <div className='text-5xl text-gray-700 dark:text-gray-300 '> Selecciona una conversacion </div>

                </div>
            </div>
        </Layout>
    )
}

export async function getServerSideProps({ req }) {
    const jwt = getTokenFromServerCookie(req);
    if (!jwt) {
        return {
            redirect: {
                destination: '/',
            },
        };
    } else {
        const user = await getUser(jwt)
        user.notifications = await getUserNotifications(jwt, user.id)
        user.countConversations = await getUserCountConversations(jwt, user.id)
        return {
            props: {
                user
            },
        };
    }
}