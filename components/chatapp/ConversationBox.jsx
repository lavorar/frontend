import Link from 'next/link'
import { useRouter } from 'next/router'
import React from 'react'
import Avatar from '../elements/Avatar'
import { useUser } from '../../lib/AuthContext'
import Conversation from './Conversation'
import { useQuery } from 'react-query'
import { getUserConversations, getUserCountConversations } from '../../lib/api'
import { getTokenFromLocalCookie } from '../../lib/auth'

const ConversationBox = () => {
    const jwt = getTokenFromLocalCookie()

    const { user } = useUser()
    const { data, isLoading, error } = useQuery(['conversation'], () => getUserConversations(jwt, user.id), {
        staleTime: Infinity
    })
    let rows = [], i = 0, len = user.countConversations;
    while (++i <= len) rows.push(i);

    return (
        <div className='w-full flex flex-col'>
            {
                isLoading ?
                    rows.map((conversation, index) => (
                        <div key={index} role="status" className="max-w-md p-4 space-y-4 border border-gray-200 divide-y divide-gray-200 rounded shadow animate-pulse dark:divide-gray-700 md:p-6 dark:border-gray-700">
                            <div className="flex items-center justify-between">
                                <div>
                                    <div className="h-2.5 bg-gray-300 rounded-full dark:bg-gray-600 w-24 mb-2.5"></div>
                                    <div className="w-32 h-2 bg-gray-200 rounded-full dark:bg-gray-700"></div>
                                </div>
                                <div className="h-2.5 bg-gray-300 rounded-full dark:bg-gray-700 w-12"></div>
                            </div>
                            <span className="sr-only">Loading...</span>
                        </div>
                    ))
                    :
                    data.map((conversation) => (
                        <Conversation isLoading={isLoading} key={conversation.id} user={conversation?.user} lastmessage={conversation.lastmessage} conversationid={conversation.id} />
                    ))
            }


        </div>
    )
}

export default ConversationBox