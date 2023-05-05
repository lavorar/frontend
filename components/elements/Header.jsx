import React, { useEffect, useState } from 'react'
import Dropdown from './Dropdown'
import HelpRoundedIcon from '@mui/icons-material/HelpRounded';
import IconWithButton from "../elements/IconWithButton"
import PersonRoundedIcon from '@mui/icons-material/PersonRounded';
import MenuRoundedIcon from '@mui/icons-material/MenuRounded';
import CloseRoundedIcon from '@mui/icons-material/CloseRounded';
import LogoutRoundedIcon from '@mui/icons-material/LogoutRounded';
import NotificationsRoundedIcon from '@mui/icons-material/NotificationsRounded';
import NotificationsNoneRoundedIcon from '@mui/icons-material/NotificationsNoneRounded';
import ChatRoundedIcon from '@mui/icons-material/ChatRounded';
import { useRouter } from 'next/router';
import { getTokenFromLocalCookie, unsetToken } from '../../lib/auth';
import Link from 'next/link';
// import DropdownFilter from './DropdownFilter';

import NotificationDropdown from './NotificationsDropdown';
import { Badge } from '@mui/material';
import Image from 'next/image';
import { UseLayoutSocket } from '../../context/LayoutContext';
import Avatar from './Avatar';
import { getUserUnReadNotification } from '../../lib/api';
import { useUser } from '../../lib/AuthContext';
// import { useAuth } from "../../../context/authContext";

const Header = ({ staticLayout }) => {
  const { user, loading } = useUser()
  const jwt = getTokenFromLocalCookie()
  const qs = require('qs');
  const queryuser = qs.stringify({
    populate: {
      notifications: {
        sort: ['review_updatedAt:desc'],
        limit: 10,
        populate: '*'
      },
    }
  }, {
    encodeValuesOnly: true, // prettify URL
  });
  const getNotifications = async () => {
    return await getUserUnReadNotification(jwt, user.id)
  }
  const [unreadNotifications, setunreadNotifications] = useState(user?.notifications?.filter(function (notif) {
    if (!notif.read) {
      return notif
    }
    else {
      return
    }
  }))



  // console.log('numero de no leida',unreadNotifications)
  const router = useRouter();
  const [open, setopen] = useState(null)
  const [openNotification, setopenNotification] = useState(false)

  // const { socket } = UseLayoutSocket();
  // token will be verified, connection will be rejected if not a valid JWT

  // useEffect(() => {
  //   console.log('userid', user)
  //   console.log('socket', socket)
  //   console.log('loading', loading)
  //   if (socket.current) {
  //     socket.current.on('connect', () => {
  //       console.log('conected')
  //       if (!loading) {
  //         console.log('user conect', user.id)
  //         socket.current.emit('addUser', user?.id)
  //       }
  //       socket.current.on("getUsers", (data) => {
  //         console.log("conected users", data)
  //       })
  //       socket.current.on("getNotification", (data) => {
  //         console.log("getNotification", data)
  //       })
  //     })
  //     return () => {
  //       socket.current.off("getUsers")
  //       socket.current.off("getNotification")
  //     }
  //   }


  // }, [loading, socket.current])
  //  wait until socket connects before adding event listeners



  const handleOpenNotification = () => {
    if (open) {
      setopen(false)
    }
    if (openNotification) {
      setopenNotification(false)
    }
    else {
      setopenNotification(true)
    }
  }
  const handleOpen = () => {
    if (openNotification) {
      setopenNotification(false)
    }
    if (open) {
      setopen(false)
    }
    else {
      setopen(true)
    }
  }
  const handleLogout = async () => {
    console.log('logout')
    unsetToken();
  };
  const closeNotification = () => {
    console.log("blur")
    setopenNotification(false)
  }

  const [focusNotification, setfocusNotification] = useState(false)

  return (
    <>
      <nav className={`
       text-gray-900   dark:text-white-ghost bg-gray-100
      dark:bg-stone-950 px-4 sm:px-4 p-0 sticky w-full z-50 top-0 py-2 md:py-2 left-0 border-b border-slate-100/50 `}>
        <div className={` relative flex ${staticLayout ? 'justify-between' : 'justify-between md:justify-end'}  h-10 items-baseline md:items-center mx-auto `}>
          <Link href="/" className='cursor-pointer' >
            <a>
              <div className={`${staticLayout ? 'flex items-end w-32 ' : 'flex items-center md:hidden w-32'} cursor-pointer`}>
                <Image src="/v1682985275/laburar-logo-horizontal.png" height={112} width={375} className={`flex items-center md:hidden cursor-pointer`} alt="Laburar Logo" />
                {/* <span className={" hidden md:block text-xl font-semibold whitespace-nowrap dark:text-white"}>aburar</span> */}
              </div>
            </a>
          </Link>
          <div className="flex md:order-2 items-baseline md:items-center ">

            <div className='mr-2 hidden md:block '>
              <button
                type="button"
                onClick={(e) => router.replace('/donate')}
                className="focus:outline-none text-gray-900 bg-orange-brand hover:bg-yellow-500 focus:ring-2 focus:ring-orange-high dark:focus:ring-orange-high font-medium rounded-lg text-sm px-3 py-2 mr-2  "
              >
                Dona
              </button>
            </div>
            <div className='mr-2  hidden md:block '>
              <button
                type="button"
                onClick={(e) => router.replace('/donate')}
                className="focus:outline-none text-gray-900 bg-orange-brand hover:bg-yellow-500 focus:ring-2 focus:ring-orange-high dark:focus:ring-orange-high font-medium rounded-lg text-sm px-3 py-2 mr-2  "
              >
                Anunciate
              </button>
            </div>

            {
              user && (
                <div className='mr-2 group  '>
                  <IconWithButton

                  >
                    <Badge badgeContent={unreadNotifications?.length} color="primary">
                      <ChatRoundedIcon sx={{
                        fontSize: '24px',
                        '@media (min-width: 768px)': {
                          fontSize: '35px',
                        },
                      }} />
                    </Badge>
                  </IconWithButton>
                </div>)
            }
            {
              user && (
                <div onClick={() => { setfocusNotification((prev) => !prev) }} className='mr-2 hidden md:block '>
                  <NotificationDropdown
                    user={user}

                    setunreadNotifications={setunreadNotifications}
                    unreadNotifications={unreadNotifications}>
                    <Badge badgeContent={unreadNotifications?.length} color="primary">
                      {!focusNotification ?
                        <NotificationsNoneRoundedIcon className='group-focus:fill-white' sx={{
                          fontSize: '24px',
                          '@media (min-width: 768px)': {
                            fontSize: '35px',
                          },
                        }} />
                        :
                        <NotificationsRoundedIcon className='group-focus:fill-white' sx={{
                          fontSize: '24px',
                          '@media (min-width: 768px)': {
                            fontSize: '35px',
                          },
                        }} />}
                    </Badge>
                  </NotificationDropdown>
                </div>)
            }

            <div className='mr-2 w-full h-9 md:h-[50px]'>
              <Dropdown user={user}>
                {user ?
                  <Avatar user={user} width={36} desktopWidth={44} fontSize={'large'} />
                  :
                  <PersonRoundedIcon sx={{
                    fontSize: '24px',
                    '@media (min-width: 768px)': {
                      fontSize: '35px',
                    },
                    "&:hover": {
                      "fill": {
                        color: '#000',
                      }
                    },
                  }} />
                }
              </Dropdown>
            </div>

            <div className={`md:hidden `}>
              <IconWithButton
                onClick={() => {
                  handleOpen()
                }}
              >
                {open === null || !open ?
                  <MenuRoundedIcon
                    sx={{
                      fontSize: '24px',
                      '@media (min-width: 768px)': {
                        fontSize: '35px',
                      },
                      animation: open === false && "spin 500ms ease 0s alternate",
                      "@keyframes spin": {
                        "0%": {
                          transform: "rotate(360deg)",
                        },
                        "100%": {
                          transform: "rotate(0deg)",
                        },
                      },
                    }}
                    fontSize='medium' />

                  :

                  <CloseRoundedIcon
                    sx={{
                      fontSize: '24px',
                      '@media (min-width: 768px)': {
                        fontSize: '35px',
                      },
                      animation: open && "spin 500ms ease 0s reverse",
                      "@keyframes spin": {
                        "0%": {
                          transform: "rotate(360deg)",
                        },
                        "100%": {
                          transform: "rotate(0deg)",
                        },
                      },
                      '@media (min-width: 768px)': {
                        fontSize: 'large',
                      },
                    }}
                    fontSize='medium' />}
              </IconWithButton>
            </div>

          </div>
        </div>
        <div className={`${open ? "block" : "hidden"}  md:hidden justify-between items-center w-full md:w-auto md:order-1`} id="navbar-sticky">
          <ul className="flex flex-col p-4 mt-4 bg-gray-50 rounded-lg border border-gray-100 md:flex-row md:space-x-8 md:mt-0 md:text-sm md:font-medium md:border-0 md:bg-white dark:bg-gray-700 md:dark:bg-gray-900 dark:border-gray-700">
            <li>
              <div
                className="px-1 py-1 ">
                <Link href='/donate'>
                  <button
                    type="button"
                    className="focus:outline-none text-gray-900 w-full bg-orange-brand hover:bg-yellow-500 focus:ring-2 focus:ring-orange-high dark:focus:ring-orange-high font-medium rounded-lg text-base px-3 py-2 "
                  >
                    Anunciate
                  </button>
                </Link>
              </div>
            </li>
            {user && <li>
              <div
                onClick={handleLogout}
                className="px-1 py-1 ">
                <button

                  className={`text-text-gray-900 dark:text-white-ghost group flex w-full  bg-gray-200 dark:bg-gray-800 items-center rounded-md px-2 py-2 text-md`}
                >
                  <div

                    className={`rounded-full bg-gray-300 dark:bg-gray-700 mr-3 h-9 w-9 p-1`}>

                    <LogoutRoundedIcon />
                  </div>
                  Cerrar sesion
                </button>
              </div>
            </li>}
            <li>
              <div
                className="px-1 py-1 ">
                <button

                  className={`text-text-gray-900 dark:text-white-ghost group flex w-full  bg-gray-200 dark:bg-gray-800 items-center rounded-md px-2 py-2 text-md`}
                >
                  <div

                    className={`rounded-full bg-gray-300 dark:bg-gray-700 mr-3 h-9 w-9 p-1`}>

                    <HelpRoundedIcon />
                  </div>
                  Ayuda (proximamente)
                </button>
              </div>
            </li>
            <li>
              <div
                className="px-1 py-1 ">
                <Link href='/donate'>
                  <button
                    type="button"
                    className="focus:outline-none text-gray-900 w-full bg-orange-brand hover:bg-yellow-500 focus:ring-2 focus:ring-orange-high dark:focus:ring-orange-high font-medium rounded-lg text-base px-3 py-2 "
                  >
                    Dona
                  </button>
                </Link>
              </div>
            </li>

          </ul>
        </div>
        {/* <div className="container max-w-7xl flex justify-between md:justify-end h-auto w-full items-center mx-auto px-2">
          <DropdownFilter />
        </div> */}

      </nav>


    </>
  )
}

export default Header
