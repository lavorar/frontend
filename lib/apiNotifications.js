import axios from "axios"
import moment from "moment"
import { getTokenFromLocalCookie } from "./auth";


export function formatMyDate(value, locale = 'en-es') {
    let today = moment(new Date())
    let weeks = today.diff(moment(value), 'weeks')
    let days = today.diff(moment(value), 'days')
    let hours = today.diff(moment(value), 'hours')
    let minutes = today.diff(moment(value), 'minutes')
    let seconds = today.diff(moment(value), 'seconds')
    return weeks ? (weeks > 1 ? (weeks + ' semanas') : (weeks + ' semana')) :
        days ? (days > 1 ? (days + ' dias') : (days + ' dias')) :
            hours ? (hours > 1 ? (hours + ' horas') : (hours + ' hora')) :
                minutes ? (minutes > 1 ? (minutes + ' minutos') : (hours + ' minuto')) :
                    ' hace unos momentos';
}

export async function markAsRead(e, id, notification, handleCountUnRead, countUnRead, acepted) {
    if (notification?.read) return
    const jwt = getTokenFromLocalCookie();
    e.preventDefault()
    handleCountUnRead(countUnRead - 1)
    notification.read = true
    await axios.put(`${process.env.NEXT_PUBLIC_STRAPI_URL}/notifications/${id}`,
        {
            data: {
                read: true,
                acepted: acepted ? true : false
            }
        }, {
        headers: {
            'Content-Type': 'application/json',
            'Authorization': `Bearer ${jwt}`,
        }
    }).then(({ data }) => {
        console.log('marcada como leida', data.data)
    }).catch((error) => {
        console.log(error)
    })

}

export async function markAsNotRead(e, id, notification, handleCountUnRead, countUnRead) {
    const jwt = getTokenFromLocalCookie();
    console.log(notification.read)
    if (notification.read) {
        console.log("entro")
        e.preventDefault()
        handleCountUnRead(countUnRead + 1)

        notification.read = false
        await axios.put(`${process.env.NEXT_PUBLIC_STRAPI_URL}/notifications/${id}`,
            {
                data: {
                    read: false
                }
            }, {
            headers: {
                'Content-Type': 'application/json',
                'Authorization': `Bearer ${jwt}`,
            }
        }).then(({ data }) => {

        }).catch((error) => {
            console.log(error)
        })
    }

}
// console.log(notifications)
export async function handleAceptService(e, id, notification, handleCountUnRead, countUnRead) {
    const jwt = getTokenFromLocalCookie();
    e.preventDefault()
    await axios.post(`${process.env.NEXT_PUBLIC_STRAPI_URL}/services`,
        {
            data: {
                acepted: true,
                start_date: new Date(),
                users_recruiter: notification.user_request.id,
                lender: user.id,
            }
        }, {
        headers: {
            'Content-Type': 'application/json',
            'Authorization': `Bearer ${jwt}`,
        }
    }).then(async ({ data }) => {
        notification.acepted = true
        markAsRead(e, id, notification, handleCountUnRead, countUnRead, true)
        await axios.post(`${process.env.NEXT_PUBLIC_STRAPI_URL}/notifications`, {
            data: {
                user: notification.user_request,
                user_request: user,
                type: 'Reply',
                review_updatedAt: new Date()
            }
        }, {
            headers: {
                Authorization: `Bearer ${jwt}`,
            },
        }).then(({ data }) => {
            console.log(data)
        })
    }).catch((error) => {
        console.log(error)
    })


}

