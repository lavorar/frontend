import React from 'react'
import MarkAsUnreadRoundedIcon from '@mui/icons-material/MarkAsUnreadRounded';
import CircleRoundedIcon from '@mui/icons-material/CircleRounded';
import CheckCircleRoundedIcon from '@mui/icons-material/CheckCircleRounded';

export default function ReadButtonNotifications() {
    return (
        <div
            className='flex gap-2'>
            {!notification.read && <CircleRoundedIcon
                sx={{ color: '#3b82f6' }}
                fontSize='small' />
            }
            <MarkAsUnreadRoundedIcon
                onClick={(e) => { markAsNotRead(e, notification.id, notification, handleCountUnRead, countUnRead) }}
                fontSize='small' />
        </div>
    )
}

