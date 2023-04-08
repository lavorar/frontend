import clsx from 'clsx'
import React from 'react'
import Avatar from '../elements/Avatar'

const Message = ({ own, children, userReciever }) => {
    return (
        <div className="chat-message">
            <div className={`flex items-end ${own ? 'justify-end' : ''}`}>
                <div className={`flex flex-col space-y-2 text-xs max-w-xs mx-2 ${own ? 'order-1 items-end' : 'order-2 items-start'}`}>
                    <div>
                        <span className={`px-4 py-2 rounded-lg inline-block ${own ? 'bg-blue-600 text-white-ghost rounded-bl-lg rounded-br-none' : 'bg-gray-300 text-gray-600 rounded-bl-none'}`}>{children}</span>
                    </div>
                </div>
                {
                    !own &&
                    <div className="w-9 h-9 rounded-full order-1 ">
                        <Avatar width={36} desktopWidth={36} fontSize={'medium'} user={userReciever} />
                    </div>
                }
            </div>
        </div>
    )
}

export default Message