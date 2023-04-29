import axios from 'axios';
import { getTokenFromServerCookie } from './auth';

const qs = require('qs');

export async function fetcher(url, options = {}) {
    let response;
    if (!options) {
        response = await fetch(url);
    } else {
        response = await fetch(url, options);
    }
    const data = await response.json();
    return data;
}


export async function getUserConversations(jwt, userId) {
    const queryconversations = qs.stringify({
        sort: 'updatedAt:desc',
        populate: {
            members: {
                filters: {
                    id: {
                        $ne: userId
                    }
                },
            },
            lastmessage: true
        },
        filters: {
            members: userId,
        },
        pagination: {
            limit: 10,
        },
    }, {
        encodeValuesOnly: true, // prettify URL
    });
    const { data: { data: conversationsData } } = await axios.get(`${process.env.NEXT_PUBLIC_STRAPI_URL}/conversations?${queryconversations}`, {
        headers: {
            Authorization: `Bearer ${jwt}`,
        }
    })

    const conversations = conversationsData?.map(({ attributes, id }) => {

        let { members: { data: member }, lastmessage } = attributes
        let { data: { attributes: msgAtributes, ...rest } } = lastmessage
        let lastmsg = { ...msgAtributes, ...rest }
        console.log(lastmsg)
        let user = {
            id: member[0].id,
            name: member[0].attributes.name,
            Slug: member[0].attributes.Slug,
            avatar: member[0].attributes.avatar,
            firstName: member[0].attributes.firstName,
            lastName: member[0].attributes.lastName
        }
        return {
            id: id,
            createdAt: attributes.createdAt,
            updatedAt: attributes.updatedAt,
            user: user,
            lastmessage: lastmsg
        }
    })
    return conversations;
}

export async function getUserCountConversations(jwt, userId) {
    const { data } = await axios.get(`${process.env.NEXT_PUBLIC_STRAPI_URL}/conversations1/count?filters[members]=${userId}`, {
        headers: {
            Authorization: `Bearer ${jwt}`,
        }
    })
    return data;
}

export async function getUserUnReadNotification(jwt, userId) {
    const queryunread = qs.stringify({
        filters: {
            user: userId,
            read: false,
        },
    }, {
        encodeValuesOnly: true, // prettify URL
    });
    const { data } = await axios.get(`${process.env.NEXT_PUBLIC_STRAPI_URL}/notification1/countUnRead?${queryunread}`, {
        headers: {
            Authorization: `Bearer ${jwt}`,
        }
    })
    return data;
}


export async function getUserNotifications(jwt, userId, limit = 10, start = 0) {
    console.log(jwt, userId)
    const querynotification = qs.stringify({
        sort: ['review_updatedAt:desc'],
        populate: {
            user_request: {
                fields: ['id', 'name', 'slug', 'avatar', 'firstName', 'lastName']
            }
        },
        filters: {
            user: userId,
        },
        pagination: {
            start: start,
            limit: limit,
        },
    }, {
        encodeValuesOnly: true, // prettify URL
    });

    const { data: { data: notifications } } = await axios.get(`${process.env.NEXT_PUBLIC_STRAPI_URL}/notifications?${querynotification}`, {
        headers: {
            Authorization: `Bearer ${jwt}`,
        },
    })

    const noti = notifications?.map(({ attributes, id }) => {
        let { user_request: { data: userdata } } = attributes
        let user = {
            id: userdata.id,
            name: userdata.attributes.name,
            Slug: userdata.attributes.Slug,
            avatar: userdata.attributes.avatar,
            firstName: userdata.attributes.firstName,
            lastName: userdata.attributes.lastName
        }

        return {
            id: id,
            type: attributes.type,
            read: attributes.read,
            createdAt: attributes.createdAt,
            updatedAt: attributes.updatedAt,
            score: attributes.score,
            comment: attributes.comment,
            rejected: attributes.rejected,
            acepted: attributes.acepted,
            review_updatedAt: attributes.review_updatedAt,
            user_request: user
        }
    })
    return noti;
}

export async function getUser(jwt, ...populate) {
    let population = {
        role: true
    }
    if (populate?.length > 0) {
        populate.forEach((item) => {
            population[item] = true
        })
    }
    const queryuser = qs.stringify({
        populate: population,
    }, {
        encodeValuesOnly: true, // prettify URL
    });
    const user = await fetcher(
        `${process.env.NEXT_PUBLIC_STRAPI_URL}/users/me?${queryuser}`,
        {
            headers: {
                Authorization: `Bearer ${jwt}`,
            },
        }
    );
    return user;
}

export async function getNumberOfLenders({ categorieSlug, provinceSlug, citySlug }) {

    const filtros = {
        role: {
            id: {
                $eq: 3,
            }
        },

    }
    if (categorieSlug) {
        filtros.categories = {
            Slug: {
                $eq: categorieSlug,
            }
        }
    }
    if (provinceSlug) {
        filtros.provincia = {
            Slug: {
                $eq: provinceSlug,
            }
        }
    }
    if (citySlug) {
        filtros.localidad = {
            slug: {
                $eq: citySlug,
            }
        }
    }
    const query = qs.stringify(filtros, {
        encodeValuesOnly: true, // prettify URL
    });
    const { data } = await axios.get(`${process.env.NEXT_PUBLIC_STRAPI_URL}/users/count?${query}`)
    return data
}

export async function getLenders({ limit = 6, start = 0, categorieSlug, provinceSlug, citySlug, populate }) {
    let population = {
        role: true,
        categories: {
            limit: 3,
        }
    }
    if (populate?.length > 0) {
        populate.forEach((item) => {
            population[item] = true
        })
    }
    const filters = {
        role: {
            id: {
                $eq: 3,
            }
        },
    }
    if (categorieSlug) {
        filters.categories = {
            Slug: {
                $eq: categorieSlug,
            }
        }
    }
    if (provinceSlug) {
        filters.provincia = {
            Slug: {
                $eq: provinceSlug,
            }
        }
    }
    if (citySlug) {
        filters.localidad = {
            slug: {
                $eq: citySlug,
            }
        }
    }
    const querylenders = qs.stringify({
        sort: ['countsReview:desc', 'averageScore:desc'],
        populate: population,
        filters: filters,
        limit: limit,
        start: start,
    }, {
        encodeValuesOnly: true, // prettify URL
    });
    const { data } = await axios.get(`${process.env.NEXT_PUBLIC_STRAPI_URL}/users?${querylenders}`)
    return data
}