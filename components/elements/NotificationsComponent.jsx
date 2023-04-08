import React, { useEffect, useRef, useState } from 'react'
import { useUser } from '../../lib/AuthContext'
import { useQuery } from 'react-query'
import { getUserNotifications } from '../../lib/api'
import { Menu, Transition } from '@headlessui/react'
import { getTokenFromLocalCookie } from '../../lib/auth'
import { useRouter } from 'next/router';
import MarkAsUnreadRoundedIcon from '@mui/icons-material/MarkAsUnreadRounded';
import CircleRoundedIcon from '@mui/icons-material/CircleRounded';
import CheckCircleRoundedIcon from '@mui/icons-material/CheckCircleRounded';
import BackgroundLetterAvatars from './AvatarInitials';
import Image from 'next/image';
import moment from 'moment'
import { formatMyDate, handleAceptService, markAsNotRead, markAsRead } from '../../lib/apiNotifications'
import { UseLayoutSocket } from '../../context/LayoutContext'
import Avatar from './Avatar'
import Notification from '../notifications/Notification'

export default function NotificationsComponent({ countUnRead, handleCountUnRead, open, notifications, setnotifications }) {
    const router = useRouter()
    let rows = [], i = 0, len = 10;
    while (++i <= len) rows.push(i);
    const { user, loading, socket } = useUser()
    const jwt = getTokenFromLocalCookie()
    const { data, isLoading, error, isSuccess } = useQuery(['notifications nueva adentro'],
        async () => getUserNotifications(jwt, user.id), {
        enabled: Boolean(user?.id && open),
        staleTime: 1000 * 60 * 60 * 24,
        onSuccess: (data) => {
            console.log('data inicial', data)
            setnotifications(data)
            notificationsRef.current = data;
        }
    })
    const notificationsRef = useRef(notifications);
    useEffect(() => {
        console.log('socket', socket)

        socket?.on("getNotification", (data) => {
            console.log("getNotification", data)
            console.log("notifiaciones dentro del socket", notificationsRef.current)
            notificationsRef.current = [data, ...notificationsRef.current];
            setnotifications(notificationsRef.current);

        })

        return () => {
            socket?.off("getNotification")
        }



    }, [socket])
    const [readNotifications, setreadNotifications] = useState(isSuccess ? data?.map(function (item) {
        // console.log(item?.read)
        return item?.read ? true : false
    }) : [])
    const [unreadNotifications, setunreadNotifications] = useState(isSuccess ? data?.filter(function (notif) {
        //  console.log('notificacion ' ,notif)
        if (!notif.read) {
            return notif
        }
        else {
            return
        }
    }) : [])
    return (
        <div>{
            !isLoading ?
                notifications.map((notification, index) => (
                    <div key={index}
                        className="px-1 py-1 ">
                        <Menu.Item>
                            {({ active, close }) => (
                                <div
                                    onMouseDown={(e) => { markAsRead(e, notification.id, notification, handleCountUnRead, countUnRead, notification.acepted) }}
                                    id="toast-notification" className={`${active ? 'bg-gray-300 dark:bg-gray-700 dark:bg-100 ' : ' '}p-2 w-full  text-gray-900 bg-white rounded-lg shadow dark:bg-gray-800 dark:text-gray-300 cursor-pointer`} >

                                    <Notification user={notification.user_request} type={notification.type} notification={notification} countUnRead={countUnRead} handleCountUnRead={handleCountUnRead} />
                                </div>

                                // <div
                                //     onClick={(e) => { markAsRead(e, notification.id, notification, handleCountUnRead, countUnRead, notification.acepted) }}
                                //     id="toast-notification" className={`${active ? 'bg-gray-300 dark:bg-gray-700 dark:bg-100 ' : ' '}p-2 w-full  text-gray-900 bg-white rounded-lg shadow dark:bg-gray-800 dark:text-gray-300 cursor-pointer`} >
                                //     <div className="flex items-center">

                                //         <Avatar width={48} fontSize={'medium'} desktopWidth={48} user={notification.user_request} />

                                //         <div className='flex w-full flex-row justify-between items-center'>
                                //             <div
                                //                 className="ml-3 text-sm font-normal">
                                //                 <div className="text-sm font-semibold text-gray-900 dark:text-white-ghost">{notification.user_request.name}</div>
                                //                 <div className="text-sm font-normal">{'te acaba de puntuar con ' + notification.score + ' estrellas'}</div>
                                //                 <span className="text-xs font-medium text-blue-600 dark:text-blue-300">{'hace ' + formatMyDate(notification.review_updatedAt)}</span>
                                //             </div>

                                //             <div
                                //                 className='flex gap-2'>
                                //                 {!notification.read && <CircleRoundedIcon
                                //                     sx={{ color: '#3b82f6' }}
                                //                     fontSize='small' />
                                //                 }
                                //                 <MarkAsUnreadRoundedIcon
                                //                     onClick={(e) => { markAsNotRead(e, notification.id, notification, handleCountUnRead, countUnRead) }}
                                //                     fontSize='small' />
                                //             </div>

                                //         </div>
                                //     </div>
                                // </div>
                                // ||
                                // notification?.type === 'Hire' &&
                                // <div

                                //     id="toast-notification" className={`${active ? 'bg-gray-300 dark:bg-gray-700 dark:bg-100 ' : ' '}p-2 w-full  text-gray-900 bg-white rounded-lg shadow dark:bg-gray-800 dark:text-gray-300 cursor-pointer`} >
                                //     <div className="flex items-center">
                                //         <div
                                //             onClick={(e) => { markAsRead(e, notification.id, notification, handleCountUnRead, countUnRead, notification.acepted) }}
                                //             className="inline-block relative shrink-0">
                                //             <Avatar width={48} fontSize={'medium'} desktopWidth={48} user={notification.user_request} />
                                //         </div>
                                //         <div onClick={(e) => { markAsRead(e, notification.id, notification, handleCountUnRead, countUnRead, notification.acepted) }} className='ml-3 flex w-full flex-row gap-2 items-center '>
                                //             {notification.acepted ?
                                //                 <div className='flex w-full flex-col  justify-start items-start'>

                                //                     <div className=" text-sm font-normal">
                                //                         <div className="text-sm font-semibold text-gray-900 dark:text-white-ghost">{notification.user_request.name + ' te contrato'}</div>
                                //                     </div>
                                //                     <span className=" mt-2 text-xs font-medium text-blue-600 dark:text-blue-300">{'hace ' + formatMyDate(notification.review_updatedAt)}</span>
                                //                 </div>
                                //                 :
                                //                 <div className='flex w-full flex-col  justify-start items-start'>

                                //                     <div className=" text-sm font-normal">
                                //                         <div className="text-sm font-semibold text-gray-900 dark:text-white-ghost">{notification.user_request.name}</div>
                                //                         <div className="text-sm font-normal">{'Quiere contratarte'}</div>

                                //                     </div>
                                //                     <div className="flex flex-row gap-2 mt-1">
                                //                         <div onClick={(e) => handleAceptService(e, notification.id, index, notification, readNotifications, setreadNotifications, setunreadNotifications)}>
                                //                             <button className="inline-flex justify-center w-full px-2 py-1.5 text-xs font-medium text-center text-gray-900 bg-orange-brand rounded-lg hover:bg-orange-high">Aceptar</button>
                                //                         </div>
                                //                         <div>
                                //                             <button href="#" className="inline-flex justify-center w-full px-2 py-1.5 text-xs font-medium text-center text-gray-900 bg-white border border-gray-300 rounded-lg hover:bg-gray-100 focus:ring-4 focus:outline-none focus:ring-gray-200 dark:bg-gray-600 dark:text-white dark:border-gray-600 dark:hover:bg-gray-700 dark:hover:border-gray-700 dark:focus:ring-gray-700">Ahora no</button>
                                //                         </div>
                                //                     </div>

                                //                     <span className=" mt-2 text-xs font-medium text-blue-600 dark:text-blue-300">{'hace ' + formatMyDate(notification.review_updatedAt)}</span>
                                //                 </div>}
                                //             <div
                                //                 className='flex gap-2'>
                                //                 {notification.read ?
                                //                     <CheckCircleRoundedIcon
                                //                         fontSize='small' />
                                //                     :
                                //                     <CircleRoundedIcon
                                //                         sx={{ color: 'blue' }}
                                //                         fontSize='small' />
                                //                 }
                                //                 <MarkAsUnreadRoundedIcon
                                //                     onClick={(e) => { markAsNotRead(e, notification.id, notification, handleCountUnRead, countUnRead) }}
                                //                     fontSize='small' />
                                //             </div>
                                //         </div>
                                //     </div>
                                // </div>
                                // ||
                                // notification?.type === 'FriendRequest' &&
                                // <div

                                //     id="toast-notification" className={`${active ? 'bg-gray-300 dark:bg-gray-700 dark:bg-100 ' : ' '} p-2 w-full  text-gray-900 bg-white rounded-lg shadow dark:bg-gray-800 dark:text-gray-300 cursor-pointer`} >
                                //     <div className="flex items-center">
                                //         <div
                                //             onClick={(e) => { markAsRead(e, notification.id, notification, handleCountUnRead, countUnRead, notification.acepted) }}
                                //             className="inline-block relative shrink-0">
                                //             <Avatar width={48} fontSize={'medium'} desktopWidth={48} user={notification.user_request} />
                                //         </div>
                                //         <div onClick={(e) => { markAsRead(e, notification.id, notification, handleCountUnRead, countUnRead, notification.acepted) }} className='ml-3 flex w-full flex-row gap-2 items-center '>
                                //             {notification.acepted ?
                                //                 <div className='flex w-full flex-col  justify-start items-start'>

                                //                     <div className=" text-sm font-normal">
                                //                         <div className="text-sm font-semibold text-gray-900 dark:text-white-ghost">{notification.user_request.name + ' te sigue'}</div>
                                //                     </div>
                                //                     <span className=" mt-2 text-xs font-medium text-blue-600 dark:text-blue-300">{'hace ' + formatMyDate(notification.review_updatedAt)}</span>
                                //                 </div>
                                //                 :
                                //                 <div className='flex w-full flex-col  justify-start items-start'>

                                //                     <div className=" text-sm font-normal">
                                //                         <div className="text-sm font-semibold text-gray-900 dark:text-white-ghost">{notification.user_request.name}</div>
                                //                         <div className="text-sm font-normal">{'Quiere Seguirte'}</div>

                                //                     </div>
                                //                     <div className="flex flex-row gap-2 mt-1">
                                //                         <div onClick={(e) => handleAceptService(e, notification.id, index, notification, readNotifications, setreadNotifications, setunreadNotifications)}>
                                //                             <button className="inline-flex justify-center w-full px-2 py-1.5 text-xs font-medium text-center text-gray-900 bg-orange-brand rounded-lg hover:bg-orange-high">Aceptar</button>
                                //                         </div>
                                //                         <div>
                                //                             <button href="#" className="inline-flex justify-center w-full px-2 py-1.5 text-xs font-medium text-center text-gray-900 bg-white border border-gray-300 rounded-lg hover:bg-gray-100 focus:ring-4 focus:outline-none focus:ring-gray-200 dark:bg-gray-600 dark:text-white dark:border-gray-600 dark:hover:bg-gray-700 dark:hover:border-gray-700 dark:focus:ring-gray-700">Ahora no</button>
                                //                         </div>
                                //                     </div>

                                //                     <span className=" mt-2 text-xs font-medium text-blue-600 dark:text-blue-300">{'hace ' + formatMyDate(notification.review_updatedAt)}</span>
                                //                 </div>}
                                //             <div
                                //                 className='flex gap-2'>
                                //                 {notification.read ?
                                //                     <CheckCircleRoundedIcon
                                //                         fontSize='small' />
                                //                     :
                                //                     <CircleRoundedIcon
                                //                         sx={{ color: 'blue' }}
                                //                         fontSize='small' />
                                //                 }
                                //                 <button onClick={(e) => { markAsNotRead(e, notification.id, notification, handleCountUnRead, countUnRead) }}>
                                //                     <MarkAsUnreadRoundedIcon

                                //                         fontSize='small' />no leido
                                //                 </button>
                                //             </div>
                                //         </div>
                                //     </div>
                                // </div>
                                // ||
                                // notification?.type === 'Reply' &&
                                // <div

                                //     id="toast-notification" className={`${active ? 'bg-gray-300 dark:bg-gray-700 dark:bg-100 ' : ' '}p-2 w-full  text-gray-900 bg-white rounded-lg shadow dark:bg-gray-800 dark:text-gray-300 cursor-pointer`} >
                                //     <div className="flex items-center">
                                //         <div
                                //             onClick={(e) => { markAsRead(e, notification.id, notification, handleCountUnRead, countUnRead, notification.acepted) }}
                                //             className="inline-block relative shrink-0">
                                //             <Avatar width={48} fontSize={'medium'} desktopWidth={48} user={notification.user_request} />
                                //         </div>
                                //         <div onClick={(e) => { markAsRead(e, notification.id, notification, handleCountUnRead, countUnRead, notification.acepted) }} className='ml-3 flex w-full flex-row gap-2 items-center '>

                                //             <div className='flex w-full flex-col  justify-start items-start'>

                                //                 <div className=" text-sm font-normal">
                                //                     <div onClick={(e) => { router.push('/' + notification.user_request.Slug) }} className="text-sm font-semibold text-gray-900 dark:text-white-ghost">{notification.user_request.name}</div>
                                //                     <div className="text-sm font-normal">{'Acepto que lo contrataras, ahora puedes reseñarlo!'}</div>

                                //                 </div>
                                //                 <span className=" mt-2 text-xs font-medium text-blue-600 dark:text-blue-300">{'hace ' + formatMyDate(notification.review_updatedAt)}</span>
                                //             </div>
                                //             <div
                                //                 className='flex gap-2'>
                                //                 {notification.read ?
                                //                     <CheckCircleRoundedIcon
                                //                         fontSize='small' />
                                //                     :
                                //                     <CircleRoundedIcon
                                //                         fontSize='small' />
                                //                 }
                                //                 <MarkAsUnreadRoundedIcon
                                //                     onClick={(e) => { markAsNotRead(e, notification.id, notification, handleCountUnRead, countUnRead) }}
                                //                     fontSize='small' />
                                //             </div>
                                //         </div>
                                //     </div>
                                // </div>

                            )}
                        </Menu.Item>
                    </div>

                ))
                :
                rows.map((row, index) => (
                    <div key={index} role='status' className="flex flex-row items-center animate-pulse  mt-4 space-x-3  w-full px-5">
                        <svg className="text-gray-200 w-16 h-16 dark:text-gray-700" aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fillRule="evenodd" d="M18 10a8 8 0 11-16 0 8 8 0 0116 0zm-6-3a2 2 0 11-4 0 2 2 0 014 0zm-2 4a5 5 0 00-4.546 2.916A5.986 5.986 0 0010 16a5.986 5.986 0 004.546-2.084A5 5 0 0010 11z" clipRule="evenodd"></path></svg>
                        <div className='flex flex-col w-full'>
                            <div className="h-2.5 bg-gray-200 rounded-full dark:bg-gray-700 w-36  mb-2"></div>

                            <div className="w-full  h-2 bg-gray-200 rounded-full dark:bg-gray-700"></div>
                        </div>
                    </div>
                ))
        }</div>
    )
}

