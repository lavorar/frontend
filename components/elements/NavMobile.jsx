import React, { useEffect, useState } from 'react'
import IconWithButton from "../elements/IconWithButton"
import ChatRoundedIcon from '@mui/icons-material/ChatRounded';
import HomeRoundedIcon from '@mui/icons-material/HomeRounded';
import SearchRoundedIcon from '@mui/icons-material/SearchRounded';
import ExploreRoundedIcon from '@mui/icons-material/ExploreRounded';
import Badge from '@mui/material/Badge';
import PersonRoundedIcon from '@mui/icons-material/PersonRounded';
import Router from 'next/router'
import { getTokenFromLocalCookie } from '../../lib/auth';
import NotificationDropdown from './NotificationsDropdown';
import NotificationsRoundedIcon from '@mui/icons-material/NotificationsRounded';
import { getUserNotifications } from '../../lib/api';
import { useQuery } from 'react-query';


const NavMobile = ({ user }) => {
    const jwt = getTokenFromLocalCookie()


    const [notifications, setnotifications] = useState(user?.notifications)
    const [unreadNotifications, setunreadNotifications] = useState(user?.notifications?.filter(function (notif) {
        //  console.log('notificacion ' ,notif)
        if (!notif.read) {
            return notif
        }
        else {
            return
        }
    }))

    return (
        <nav className="bg-gray-50
      dark:bg-stone-950 px-2 sm:px-4 py-2.5 fixed md:hidden w-full  z-10 bottom-0">
            <div className="container flex relative  justify-around items-center mx-auto px-2">
                <div className='group'>
                    <IconWithButton
                        onClick={() => Router.push('/')}>
                        <HomeRoundedIcon fontSize='large' />
                    </IconWithButton>
                </div>

                <div className=''>
                    <IconWithButton
                        onClick={() => Router.push('/buscar')}>
                        <Badge color="primary">
                            <SearchRoundedIcon fontSize='large' />
                        </Badge>
                    </IconWithButton>
                </div>
                {
                    user && (
                        <div className=''>
                            <NotificationDropdown
                                up={true}
                                user={user}
                                notifications={notifications}
                                setunreadNotifications={setunreadNotifications}
                                unreadNotifications={unreadNotifications}>
                                <Badge badgeContent={unreadNotifications?.length} color="primary">
                                    <NotificationsRoundedIcon fontSize='large' />
                                </Badge>
                            </NotificationDropdown>
                        </div>)
                }
                {/* <div className=''>
                    <IconWithButton>
                        <Badge badgeContent={4} color="primary">
                            <ChatRoundedIcon fontSize='large' />
                        </Badge>
                    </IconWithButton>
                </div> */}
                {user &&
                    <div className=''>
                        <IconWithButton
                            onClick={() => Router.push('/' + user.Slug)}>
                            <PersonRoundedIcon fontSize='large' />
                        </IconWithButton>
                    </div>
                }

            </div>
        </nav >
    )
}


export default NavMobile