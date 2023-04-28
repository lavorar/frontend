import * as React from 'react';
import Avatar from '@mui/material/Avatar';



function stringAvatar(user, width, fontSize) {
    const { firstName, lastName } = user
    return {
        sx: {
            width: '100%',
            height: '100%',
            fontSize: fontSize ? fontSize : 'medium',
            bgcolor: "#c1c4c7",
            color: "#111827"

        },
        children: `${firstName ? firstName.split(' ')[0][0].toUpperCase() : ''}${lastName ? lastName.split(' ')[0][0].toUpperCase() : ''}`,
    };
}

export default function BackgroundLetterAvatars({ user, width, fontSize }) {
    return (
        <Avatar   {...stringAvatar(user, width, fontSize)} />
    );
}

// 1670336953/55