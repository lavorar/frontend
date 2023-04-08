import * as React from 'react';
import Avatar from '@mui/material/Avatar';



function stringAvatar(firtsName, lastName, width, fontSize) {
    const name = firtsName + lastName
    return {
        sx: {
            width: '100%',
            height: '100%',
            fontSize: fontSize ? fontSize : 'medium',
            bgcolor: "#c1c4c7",
            color: "#111827"

        },
        children: `${firtsName.split(' ')[0][0].toUpperCase()}${lastName.split(' ')[0][0].toUpperCase()}`,
    };
}

export default function BackgroundLetterAvatars({ firtsName, lastName, width, fontSize }) {
    return (
        <Avatar   {...stringAvatar(firtsName, lastName, width, fontSize)} />
    );
}