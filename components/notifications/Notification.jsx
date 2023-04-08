import React from 'react'
import MarkAsUnreadRoundedIcon from '@mui/icons-material/MarkAsUnreadRounded';
import CircleRoundedIcon from '@mui/icons-material/CircleRounded';
import Avatar from '../elements/Avatar';
import moment from 'moment';
import { formatMyDate, handleAceptService, markAsNotRead, markAsRead } from '../../lib/apiNotifications'



export default function Notification({ user, notification, type, handleCountUnRead, countUnRead }) {

    function ReadButtonNotifications() {


        return (
            <div
                className='flex gap-2'>
                {!notification.read && <CircleRoundedIcon
                    onMouseDown={(e) => {
                        e.stopPropagation();
                        markAsRead(e, notification.id, notification, handleCountUnRead, countUnRead, notification.acepted)
                    }}
                    sx={{ color: '#3b82f6' }}
                    fontSize='small' />
                }
                <MarkAsUnreadRoundedIcon
                    onMouseDown={(e) => {
                        console.log('click mark as not read')
                        e.stopPropagation();
                        markAsNotRead(e, notification.id, notification, handleCountUnRead, countUnRead, notification.acepted)
                    }}
                    fontSize='small' />
            </div>
        )
    }
    const DateNotification = ({ children }) => {
        return <div className="ml-3 text-sm font-normal">
            <div className="text-sm font-semibold text-gray-900 dark:text-white-ghost">{children}</div>
            <span className="text-xs font-medium text-blue-600 dark:text-blue-300">{'hace ' + formatMyDate(notification.review_updatedAt)}</span>
        </div>
    }

    const renderNotification = () => {
        switch (type) {
            case 'FriendRequest':
                return (
                    <div className='flex items-center'>
                        <Avatar width={48} fontSize={'medium'} desktopWidth={48} user={user} />
                        <div className='flex w-full flex-row justify-between items-center'>
                            <DateNotification>{user.name + ' te mando una solicitud de seguimiento'} </DateNotification>
                            <ReadButtonNotifications />
                        </div>
                    </div>
                );
            case 'Reply':
                return (
                    <div className='flex items-center'>
                        <Avatar width={48} fontSize={'medium'} desktopWidth={48} user={notification.user_request} />
                        <div className='flex w-full flex-row justify-between items-center'>
                            <DateNotification>{user.name + ' Acepto tu solicitud, ahora puedes reseñarlo'} </DateNotification>
                            <ReadButtonNotifications />
                        </div>
                    </div>
                );
            case 'Review':
                return (
                    <div className='flex items-center'>
                        <Avatar width={48} fontSize={'medium'} desktopWidth={48} user={notification.user_request} />
                        <div className='flex w-full flex-row justify-between items-center'>
                            <DateNotification>{user.name + ' te ha puntuado con ' + notification.score + ' estrellas'} </DateNotification>
                            <ReadButtonNotifications />
                        </div>
                    </div>
                );
            default:
                return null;
        }
    };

    return (
        <div>
            {renderNotification()}
        </div>
    );

}

