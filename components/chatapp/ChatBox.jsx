import axios from 'axios';
import { useRouter } from 'next/router';
import React, { useEffect, useRef, useState } from 'react'
import { UseLayoutSocket } from '../../context/LayoutContext';
import { useUser } from '../../lib/AuthContext';
import Avatar from '../elements/Avatar';
import Message from './Message'
import MessageInput from './MessageInput'

import ArrowBackRoundedIcon from '@mui/icons-material/ArrowBackRounded';
import IconWithButton from '../elements/IconWithButton';
import Link from 'next/link';

const ChatBox = ({ userReciever, messages }) => {
    const { user, socket } = useUser()

    const router = useRouter()
    // const { conversationId } = router.query
    const scrollRef = useRef();
    // const message = useRef('')
    let [messageList, setMessageList] = useState(messages)
    const handlernewMessageEfect = (message) => {
        setMessageList((prev) => [...prev, message])
    }
    useEffect(() => {
        if (socket) {
            socket.on("connect", () => {
                console.log("conectado", socket)
                socket.on("getMessage", ({ id, sender, text, createdAt, updatedAt }) => {
                    console.log("getMessage", { id, sender, text, createdAt, updatedAt })
                    const newMessage = {
                        sender: sender,
                        text: text,
                        id: id,
                        createdAt: createdAt,
                        updatedAt: updatedAt,
                        sender: sender
                    };
                    handlernewMessageEfect(newMessage)
                });
            })
            return () => {
                socket?.off("getMessage")
            }
        }
        return () => {
            socket?.off("getMessage")
        }

    }, [socket]);

    useEffect(() => {
        scrollRef.current?.scrollIntoView({ behavior: "smooth" });
    }, [messageList]);

    useEffect(() => {
        setMessageList(messages)
    }, [router.query])

    // const handleSubmitMessage = async (e) => {
    //     e.preventDefault()
    //     if (conversationId) {
    //         await axios.post(`${process.env.NEXT_PUBLIC_STRAPI_URL}/messages`, {
    //             data: {
    //                 text: message.current.value,
    //                 conversation: { id: conversationId },
    //                 sender: { id: user?.id },
    //             }
    //         }).then(({ data: { data } }) => {
    //             let sender = {
    //                 id: user?.id,
    //                 name: user?.name,
    //                 avatar: user?.avatar,
    //                 slug: user?.slug,
    //                 firstName: user?.firstName,
    //                 lastName: user?.lastName,
    //             }
    //             let mensaje = {
    //                 id: data.id,
    //                 text: data.attributes.text,
    //                 createdAt: data.attributes.createdAt,
    //                 updatedAt: data.attributes.updatedAt,
    //                 sender: sender
    //             }
    //             socket.emit("sendMessage", {
    //                 id: data.id,
    //                 sender: sender,
    //                 receiver: userReciever,
    //                 conversationId: conversationId,
    //                 text: message.current.value,
    //                 createdAt: data.attributes.createdAt,
    //                 updatedAt: data.attributes.updatedAt,
    //             });
    //             setMessageList((prev) => [...prev, mensaje])
    //         })
    //     }
    //     else {
    //         await axios.post(`${process.env.NEXT_PUBLIC_STRAPI_URL}/conversations`, {
    //             data: {
    //                 members: [{ id: user?.id }, { id: userReciever.id }],
    //             }
    //         }).then(async ({ data: { data: conversation } }) => {
    //             await axios.post(`${process.env.NEXT_PUBLIC_STRAPI_URL}/messages`, {
    //                 data: {
    //                     text: message.current.value,
    //                     conversation: conversation.id,
    //                     sender: { id: user?.id },
    //                 }
    //             }).then(({ data: { data } }) => {
    //                 let sender = {
    //                     id: user?.id,
    //                     name: user?.name,
    //                     avatar: user?.avatar,
    //                     slug: user?.slug,
    //                     firstName: user?.firstName,
    //                     lastName: user?.lastName,
    //                 }
    //                 let mensaje = {
    //                     id: data.id,
    //                     text: data.attributes.text,
    //                     createdAt: data.attributes.createdAt,
    //                     updatedAt: data.attributes.updatedAt,
    //                     sender: sender
    //                 }
    //                 socket.emit("sendMessage", {
    //                     id: data.id,
    //                     sender: sender,
    //                     receiver: userReciever,
    //                     conversationId: conversationId,
    //                     text: message.current.value,
    //                     createdAt: data.attributes.createdAt,
    //                     updatedAt: data.attributes.updatedAt,
    //                 });
    //                 setMessageList((prev) => [...prev, mensaje])
    //                 router.push(`/mensajes/${conversation.id}`)
    //             })
    //         })
    //     }

    //     message.current.value = ''
    // }
    return (
        <>
            <div className="flex-1  justify-between flex flex-col h-full w-full">
                <div className="flex flex-row flex-wrap w-full  gap-2 items-center sm:justify-start py-2 md:p-2 dark:bg-gray-900 ">
                    <div className='md:hidden'>
                        <Link href={'/mensajes'}>
                            <button
                                className={` inline-flex w-full justify-center rounded-full dark:group-hover:bg-gray-700  px-2 py-2 text-sm font-medium text-gray-900 dark:text-white-ghost group-hover:bg-gray-300  focus:outline-1 focus-visible:ring-2 focus-visible:ring-white focus-visible:ring-opacity-75`}>
                                <ArrowBackRoundedIcon />

                            </button>
                        </Link>
                    </div>
                    <Avatar user={userReciever} width={36} desktopWidth={64} fontSize={'large'} />
                    <div className="flex flex-col mb-2 leading-tight truncate w-3/5">
                        <div className="text-lg md:text-2xl mt-1 flex items-center">
                            <span className="text-gray-700   dark:text-gray-100 mr-3 ml-2">{userReciever ? userReciever.name : 'Anderson Vanhron'}</span>
                        </div>
                        <span className="text-md  text-gray-600 truncate dark:text-gray-300 ml-2">{userReciever ? userReciever.aboutme : 'Junior Developer'}</span>
                    </div>

                </div>
                <div className='flex flex-col justify-end h-full overflow-y-auto '>
                    <div id="messages" className="flex flex-col space-y-4 p-3 overflow-y-auto scrollbar-thumb-blue scrollbar-thumb-rounded scrollbar-track-blue-lighter scrollbar-w-2 scrolling-touch">
                        {
                            // let fechaactual = now().getdia
                            messageList.map(({ sender, text, id }) => {

                                //if message.fecha < now() fehcaactual = message.fecha.getddia
                                return (
                                    <div key={id} ref={scrollRef}>
                                        <Message own={sender.id === user.id} userReciever={userReciever} > {text}</Message>
                                    </div>
                                )

                            })
                        }

                    </div>
                    <MessageInput userReciever={userReciever} setMessageList={handlernewMessageEfect} />
                </div>
            </div>
        </>
    )
}

export default ChatBox

