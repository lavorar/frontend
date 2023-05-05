import { Menu, Transition } from '@headlessui/react'
import React, { Fragment, useEffect, useRef, useState } from 'react'
import HelpRoundedIcon from '@mui/icons-material/HelpRounded';
import LogoutIcon from '@mui/icons-material/Logout';
import { useRouter } from 'next/router';
import moment from 'moment';
import MarkAsUnreadRoundedIcon from '@mui/icons-material/MarkAsUnreadRounded';
import CircleRoundedIcon from '@mui/icons-material/CircleRounded';
import CheckCircleRoundedIcon from '@mui/icons-material/CheckCircleRounded';
import BackgroundLetterAvatars from './AvatarInitials';
import Link from 'next/link';
import { forwardRef } from 'react';
import axios from 'axios';
import { getTokenFromLocalCookie } from '../../lib/auth';
import Image from 'next/image';
import { useQuery } from 'react-query';
import { getUserNotifications, getUserUnReadNotification } from '../../lib/api';
import NotificationsComponent from './NotificationsComponent';
import { Badge } from '@mui/material';
import { useUser } from '../../lib/AuthContext';
import { UseLayoutSocket } from '../../context/LayoutContext';
export default function NotificationDropdown({ children, up }) {
    const router = useRouter()
    const jwt = getTokenFromLocalCookie()
    // const { socket } = UseLayoutSocket()
    const { user, socket } = useUser()
    const { error, isSuccess } = useQuery(['un read'], () => getUserUnReadNotification(jwt, user.id), {
        staleTime: Infinity,
        enabled: Boolean(jwt && user?.id),
        onSettled: (data) => {
            // console.log('ractquery data', data.notifications)
            setcountUnRead(data)
        }
    })
    useEffect(() => {
        console.log('userid', user)
        console.log('socket', socket)
        if (socket) {
            socket.on('connect', () => {
                console.log('conected')
                if (user) {
                    console.log('user conect', user.id)
                    socket.emit('addUser', user?.id)
                }
                socket.on("getUsers", (data) => {
                    console.log("conected users", data)
                })
                socket.on("getNotification", (data) => {
                    setcountUnRead((prev) => (prev + 1))
                    console.log("getNotification", data)
                })
            })
            return () => {
                socket?.off("getUsers")
                socket?.off("getNotification")
            }
        }


    }, [socket])
    const [countUnRead, setcountUnRead] = useState(null)
    const [notifications, setnotifications] = useState([]);


    const handleCountUnRead = (data) => {
        setcountUnRead(data)
    }

    // console.log('countUnRead padre', countUnRead)
    return (
        <div className="text-right">
            <Menu as="div" className=" inline-block text-left ">
                {({ open }) => (
                    <>
                        <div>

                            <Menu.Button
                                className={`  ${open ? 'text-blue-600 dark:text-blue-500 dark:bg-gray-200' : ''} inline-flex w-full justify-center rounded-full bg-transparent dark:bg-transparent  dark:hover:scale-110 px-2 py-2 text-sm font-medium text-gray-800 dark:text-white-ghost group hover:scale-110 transition-all focus:outline-1 focus-visible:ring-2 focus-visible:ring-white focus-visible:ring-opacity-75`}>
                                <Badge badgeContent={isSuccess ? countUnRead : null} color="primary">
                                    {children}
                                </Badge>

                            </Menu.Button>

                        </div>

                        <Transition
                            show={open}
                            as={Fragment}
                            enter="transition ease-out duration-100"
                            enterFrom="transform opacity-0 scale-95"
                            enterTo="transform opacity-100 scale-100"
                            leave="transition ease-in duration-75"
                            leaveFrom="transform opacity-100 scale-100"
                            leaveTo="transform opacity-0 scale-95"
                        >
                            <Menu.Items className={`${up && '-top-7 transform h-[calc(100vh-138px)] -translate-y-full absolute -left-2 right-0 w-screen'} overflow-x-hidden max-h-[calc(100vh-138px)] md:h-[500px] overflow-y-auto top-14 md:top-12 md:absolute right-0 md:-right-0 z-30 mt-4 md:w-96 origin-top-right divide-y divide-gray-200 rounded-md bg-white-ghost dark:bg-gray-800 shadow-lg ring-1 ring-black ring-opacity-5 focus:outline-none scrollbar-thumb-blue scrollbar-thumb-rounded scrollbar-track-blue-lighter scrollbar-w-2 scrolling-touch`}>
                                <NotificationsComponent
                                    countUnRead={countUnRead}
                                    handleCountUnRead={handleCountUnRead} notifications={notifications} setnotifications={setnotifications} open={open} />
                                {/* {query.data ?
                                    query.data?.map((notification, index) => (
                                        <div key={index}

                                            className="px-1 py-1 ">
                                            <Menu.Item >
                                                {({ active, close }) => (

                                                    notification?.type === 'Review' &&

                                                    <div

                                                        id="toast-notification" className={`${active ? 'bg-gray-300 dark:bg-gray-700 dark:bg-100 ' : ' '}p-2 w-full  text-gray-900 bg-white rounded-lg shadow dark:bg-gray-800 dark:text-gray-300 cursor-pointer`} role="alert">
                                                        <div className="flex items-center">
                                                            <div
                                                                onClick={(e) => { markAsRead(e, notification.id, index, notification) }}
                                                                className="inline-block relative shrink-0">
                                                                {
                                                                    notification.user_request.avatar ?

                                                                        <div
                                                                            onClick={(e) => { router.push('/' + user.Slug) }}
                                                                            className="h-[50px] w-[50px] md:w-[50px] md:h-[50px] relative aspect-square "
                                                                        // onClick={router.replace('/prestadores/' + user?.Slug)}
                                                                        >
                                                                            <Image
                                                                                src={`/f_auto,q_auto,w_50,h_50,c_fill,ar_1:1/v${notification.user_request.avatar}`}
                                                                                alt={"Picture of the user " + notification.user_request.name}
                                                                                layout="fill" //required
                                                                                objectFit="cover" // change to suit your needs
                                                                                className="rounded-full w-full"
                                                                                loading="eager"
                                                                                priority={true}
                                                                                quality={70} //just an example
                                                                            />
                                                                        </div>
                                                                        :
                                                                        <div
                                                                            onClick={(e) => { router.push('/' + user.Slug) }} className="h-[50px] w-[50px] md:w-[50px] md:h-[50px] aspect-square"
                                                                        // onClick={router.replace('/prestadores/' + user?.Slug)}
                                                                        >
                                                                            <span className="sr-only">{notification.user_request.name}</span>
                                                                            <BackgroundLetterAvatars fontSize='xx-large' firtsName={notification.user_request.firstName} lastName={notification.user_request.lastName} />
                                                                        </div>

                                                                }
                                                            </div>
                                                            <div onClick={(e) => { router.push('/' + user.Slug) }} className='flex w-full flex-row justify-between items-center'>
                                                                <div
                                                                    onClick={(e) => { markAsRead(e, notification.id, index, notification) }}
                                                                    className="ml-3 text-sm font-normal">
                                                                    <div className="text-sm font-semibold text-gray-900 dark:text-white-ghost">{notification.user_request.name}</div>
                                                                    <div className="text-sm font-normal">{'te acaba de puntuar con ' + notification.score + ' estrellas'}</div>
                                                                    <span className="text-xs font-medium text-blue-600 dark:text-blue-300">{'hace ' + formatMyDate(notification.review_updatedAt)}</span>
                                                                </div>

                                                                <div
                                                                    className='flex gap-2'>
                                                                    {notification.read === true ?
                                                                        <CheckCircleRoundedIcon
                                                                            fontSize='small' />
                                                                        :
                                                                        <CircleRoundedIcon
                                                                            fontSize='small' />
                                                                    }
                                                                    <MarkAsUnreadRoundedIcon
                                                                        onClick={(e) => { markAsNotRead(e, notification.id, index, notification) }}
                                                                        fontSize='small' />
                                                                </div>

                                                            </div>
                                                        </div>
                                                    </div>
                                                    ||
                                                    notification?.type === 'Hire' &&
                                                    <div

                                                        id="toast-notification" className={`${active ? 'bg-gray-300 dark:bg-gray-700 dark:bg-100 ' : ' '}p-2 w-full  text-gray-900 bg-white rounded-lg shadow dark:bg-gray-800 dark:text-gray-300 cursor-pointer`} role="alert">
                                                        <div className="flex items-center">
                                                            <div
                                                                onClick={(e) => { markAsRead(e, notification.id, index, notification) }}
                                                                className="inline-block relative shrink-0">
                                                                {
                                                                    notification.user_request.avatar ?

                                                                        <div
                                                                            onClick={(e) => { router.push('/' + user.Slug) }}
                                                                            className="h-[50px] w-[50px] md:w-[50px] md:h-[50px] relative aspect-square "
                                                                        // onClick={router.replace('/prestadores/' + user?.Slug)}
                                                                        >
                                                                            <Image
                                                                                src={`/f_auto,q_auto,w_50,h_50,c_fill,ar_1:1/v${notification.user_request.avatar}`}
                                                                                alt={"Picture of the user " + notification.user_request.name}
                                                                                layout="fill" //required
                                                                                objectFit="cover" // change to suit your needs
                                                                                className="rounded-full w-full"
                                                                                loading="eager"
                                                                                priority={true}
                                                                                quality={100} //just an example
                                                                            />
                                                                        </div>
                                                                        :
                                                                        <div
                                                                            onClick={(e) => { router.push('/' + user.Slug) }} className="h-[50px] w-[50px] md:w-[50px] md:h-[50px] aspect-square"
                                                                        // onClick={router.replace('/prestadores/' + user?.Slug)}
                                                                        >
                                                                            <span className="sr-only">{notification.user_request.name}</span>
                                                                            <BackgroundLetterAvatars fontSize='xx-large' firtsName={notification.user_request.firstName} lastName={notification.user_request.lastName} />
                                                                        </div>

                                                                }
                                                            </div>
                                                            <div onClick={(e) => { markAsRead(e, notification.id, index, notification) }} className='ml-3 flex w-full flex-row gap-2 items-center '>
                                                                {notification.acepted ?
                                                                    <div className='flex w-full flex-col  justify-start items-start'>

                                                                        <div className=" text-sm font-normal">
                                                                            <div className="text-sm font-semibold text-gray-900 dark:text-white-ghost">{notification.user_request.name + ' te contrato'}</div>
                                                                        </div>
                                                                        <span className=" mt-2 text-xs font-medium text-blue-600 dark:text-blue-300">{'hace ' + formatMyDate(notification.review_updatedAt)}</span>
                                                                    </div>
                                                                    :
                                                                    <div className='flex w-full flex-col  justify-start items-start'>

                                                                        <div className=" text-sm font-normal">
                                                                            <div className="text-sm font-semibold text-gray-900 dark:text-white-ghost">{notification.user_request.name}</div>
                                                                            <div className="text-sm font-normal">{'Quiere contratarte'}</div>

                                                                        </div>
                                                                        <div className="flex flex-row gap-2 mt-1">
                                                                            <div onClick={(e) => handleAceptService(e, notification.id, index, notification)}>
                                                                                <button className="inline-flex justify-center w-full px-2 py-1.5 text-xs font-medium text-center text-gray-900 bg-orange-brand rounded-lg hover:bg-orange-high">Aceptar</button>
                                                                            </div>
                                                                            <div>
                                                                                <button href="#" className="inline-flex justify-center w-full px-2 py-1.5 text-xs font-medium text-center text-gray-900 bg-white border border-gray-300 rounded-lg hover:bg-gray-100 focus:ring-4 focus:outline-none focus:ring-gray-200 dark:bg-gray-600 dark:text-white dark:border-gray-600 dark:hover:bg-gray-700 dark:hover:border-gray-700 dark:focus:ring-gray-700">Ahora no</button>
                                                                            </div>
                                                                        </div>

                                                                        <span className=" mt-2 text-xs font-medium text-blue-600 dark:text-blue-300">{'hace ' + formatMyDate(notification.review_updatedAt)}</span>
                                                                    </div>}
                                                                <div
                                                                    className='flex gap-2'>
                                                                    {notification.read === true ?
                                                                        <CheckCircleRoundedIcon
                                                                            fontSize='small' />
                                                                        :
                                                                        <CircleRoundedIcon
                                                                            fontSize='small' />
                                                                    }
                                                                    <MarkAsUnreadRoundedIcon
                                                                        onClick={(e) => { markAsNotRead(e, notification.id, index, notification) }}
                                                                        fontSize='small' />
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    ||
                                                    notification?.type === 'Reply' &&
                                                    <div

                                                        id="toast-notification" className={`${active ? 'bg-gray-300 dark:bg-gray-700 dark:bg-100 ' : ' '}p-2 w-full  text-gray-900 bg-white rounded-lg shadow dark:bg-gray-800 dark:text-gray-300 cursor-pointer`} role="alert">
                                                        <div className="flex items-center">
                                                            <div
                                                                onClick={(e) => { markAsRead(e, notification.id, index, notification) }}
                                                                className="inline-block relative shrink-0">
                                                                {
                                                                    notification.user_request.avatar ?

                                                                        <div
                                                                            onClick={(e) => { router.push('/' + notification.user_request.Slug) }}
                                                                            className="h-[50px] w-[50px] md:w-[50px] md:h-[50px] relative aspect-square "
                                                                        // onClick={router.replace('/prestadores/' + user?.Slug)}
                                                                        >
                                                                            <Image
                                                                                src={`/f_auto,q_auto,w_50,h_50,c_fill,ar_1:1/v${notification.user_request.avatar}`}
                                                                                alt={"Picture of the user " + notification.user_request.name}
                                                                                layout="fill" //required
                                                                                objectFit="cover" // change to suit your needs
                                                                                className="rounded-full w-full"
                                                                                loading="eager"
                                                                                priority={true}
                                                                                quality={100} //just an example
                                                                            />
                                                                        </div>
                                                                        :
                                                                        <div
                                                                            onClick={(e) => { router.push('/' + notification.user_request.Slug) }} className="h-[50px] w-[50px] md:w-[50px] md:h-[50px] aspect-square"
                                                                        // onClick={router.replace('/prestadores/' + user?.Slug)}
                                                                        >
                                                                            <span className="sr-only">{notification.user_request.name}</span>
                                                                            <BackgroundLetterAvatars fontSize='xx-large' firtsName={notification.user_request.firstName} lastName={notification.user_request.lastName} />
                                                                        </div>

                                                                }
                                                            </div>
                                                            <div onClick={(e) => { markAsRead(e, notification.id, index, notification) }} className='ml-3 flex w-full flex-row gap-2 items-center '>

                                                                <div className='flex w-full flex-col  justify-start items-start'>

                                                                    <div className=" text-sm font-normal">
                                                                        <div onClick={(e) => { router.push('/' + notification.user_request.Slug) }} className="text-sm font-semibold text-gray-900 dark:text-white-ghost">{notification.user_request.name}</div>
                                                                        <div className="text-sm font-normal">{'Acepto que lo contrataras, ahora puedes reseñarlo!'}</div>

                                                                    </div>
                                                                    <span className=" mt-2 text-xs font-medium text-blue-600 dark:text-blue-300">{'hace ' + formatMyDate(notification.review_updatedAt)}</span>
                                                                </div>
                                                                <div
                                                                    className='flex gap-2'>
                                                                    {notification.read === true ?
                                                                        <CheckCircleRoundedIcon
                                                                            fontSize='small' />
                                                                        :
                                                                        <CircleRoundedIcon
                                                                            fontSize='small' />
                                                                    }
                                                                    <MarkAsUnreadRoundedIcon
                                                                        onClick={(e) => { markAsNotRead(e, notification.id, index, notification) }}
                                                                        fontSize='small' />
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                )}
                                            </Menu.Item>
                                        </div>

                                    ))
                                    :
                                    <></>
                                } */}
                            </Menu.Items>
                        </Transition>
                    </>
                )}
            </Menu>
        </div >
    )
}

