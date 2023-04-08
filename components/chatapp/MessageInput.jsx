import axios from 'axios'
import { now } from 'moment'
import { useRouter } from 'next/router'
import React, { useRef } from 'react'
import { UseLayoutSocket } from '../../context/LayoutContext'
import { useUser } from '../../lib/AuthContext'
import { getTokenFromLocalCookie } from '../../lib/auth'

const MessageInput = ({ userReciever, setMessageList }) => {
    const router = useRouter()
    const conversationId = parseInt(router.query?.conversationId)
    console.log("conversationId", typeof conversationId, conversationId)
    const { user, socket } = useUser()
    const jwt = getTokenFromLocalCookie()
    console.log("socket message imput", socket)
    const message = useRef('')
    const handleSubmitMessage = async (e) => {
        e.preventDefault()
        const dataMesg = {
            data: {
                text: message.current.value,
                conversation: { id: conversationId },
                sender: { id: user?.id },
            }
        }
        await axios.post(`${process.env.NEXT_PUBLIC_STRAPI_URL}/messages`, dataMesg, {
            headers: {
                'Authorization': `Bearer ${jwt}`
            }
        })
            .then(async ({ data: { data } }) => {
                console.log(data)
                let sender = {
                    id: user?.id,
                    name: user?.name,
                    avatar: user?.avatar,
                    slug: user?.slug,
                    firstName: user?.firstName,
                    lastName: user?.lastName,
                }
                let mensaje = {
                    id: data.id,
                    text: data.attributes.text,
                    createdAt: data.attributes.createdAt,
                    updatedAt: data.attributes.updatedAt,
                    sender: sender,
                    receiver: userReciever,
                    conversation: { id: conversationId },
                }
                socket?.emit("sendMessage", mensaje);
                setMessageList(mensaje)
                // update the conversation's lastmessage attribute
                await axios.put(`${process.env.NEXT_PUBLIC_STRAPI_URL}/conversations/${conversationId}`, {
                    data: { lastmessage: data.id }
                }, {
                    headers: {
                        'Authorization': `Bearer ${jwt}`
                    }
                })
            })

        message.current.value = ''
    }
    return (
        <div className=" px-4 pt-4 mb-2 sm:mb-0">
            <form onSubmit={handleSubmitMessage}>
                <div className="relative flex justify-between gap-2">

                    <input ref={message} type="text" placeholder="Enviar mensaje..." className="w-full focus:outline-none focus:placeholder-gray-400 text-gray-600 placeholder-gray-600 pl-3 bg-gray-200 rounded-full py-3" />
                    <div className="items-center flex ">
                        <button type="submit" className="inline-flex items-center justify-center rounded-full px-4 py-3 transition duration-500 ease-in-out text-white bg-blue-500 hover:bg-blue-400  focus:outline-none">
                            {/* <span className="font-bold ">Send</span> */}
                            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" className="h-6 w-6  transform rotate-90">
                                <path d="M10.894 2.553a1 1 0 00-1.788 0l-7 14a1 1 0 001.169 1.409l5-1.429A1 1 0 009 15.571V11a1 1 0 112 0v4.571a1 1 0 00.725.962l5 1.428a1 1 0 001.17-1.408l-7-14z"></path>
                            </svg>
                        </button>
                    </div>
                </div>
            </form>
        </div>
    )
}

export default MessageInput