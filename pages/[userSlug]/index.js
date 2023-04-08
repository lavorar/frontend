import { data } from 'autoprefixer';
import { useRouter } from 'next/router';
import { useEffect, useLayoutEffect, useMemo, useState } from 'react';
import Layout from '../../components/Layouts/mainLayout';
import { fetcher, getUserConversations } from '../../lib/api';
import { getTokenFromServerCookie } from '../../lib/auth';
import MyProfileComponent from '../../components/profile/MyProfile'
import RatingsComponent from '../../components/profile/RatingsComponent';
import VerifiedIcon from "@mui/icons-material/Verified";
import LocationOnIcon from "@mui/icons-material/LocationOn";
import HireLender from '/components/elements/HireLender';
import Link from 'next/link';
import HoverRating from '/components/elements/Rating';
import TabsProfile from '/components/profile/TabsProfile';
import BackgroundLetterAvatars from '/components/elements/AvatarInitials';
import Image from 'next/image';
import ModalEditProfile from '/components/profile/ModalEditProfile'
import axios from 'axios';
import { useQuery } from 'react-query';
import { getProvincesArgentina } from '../../components/SingUp/LenderOptions';
import SendMessageButton from '../../components/chatapp/SendMessageButton';
import FollowButton from '../../components/profile/FollowButton';
import ProfileComponent from '../../components/profile/ProfileComponent';


const Profile = ({ user, currentUser, userReview }) => {

    if (currentUser === null) {
        return (
            <Layout user={user}>

                <h1>No existe este usuario</h1>
            </Layout>
        )
    }

    const [provincesOptions, setprovincesOptions] = useState([]);
    const queryprovinces = useQuery(['provinces'], getProvincesArgentina, {
        onSettled: (data) => {
            setprovincesOptions(data);
        },
        staleTime: Infinity,
    });
    // console.log(queryprovinces)
    const router = useRouter();
    const [userClient, setuserClient] = useState(currentUser);
    const [image, setImage] = useState(userClient?.avatar ? `/f_auto,q_auto,w_150,h_150/v${userClient?.avatar}` : null);
    const handleUserChange = (user) => {
        setuserClient(user);
    }

    let [isOpen, setIsOpen] = useState(false)
    // function closeModal() {
    //     setIsOpen(false)
    // }
    const qs = require('qs');

    const queryuser = qs.stringify({
        filters: {
            slug: {
                $eq: router.query.userSlug,
            }
        },
        populate: {
            categories: true,
            role: true,
            localidad: true,
            lenders: {
                populate: {
                    user_recruiter: true,
                }
            },
            service_recruiters: {
                populate: {
                    lender: true,
                }
            },
            provincia: true,
            notifications: {
                sort: ['review_updatedAt:desc'],
                limit: 10,
                populate: '*'
            },
        }
    }, {
        encodeValuesOnly: true, // prettify URL
    });
    const getUserQuery = async () => {
        let userProfile = await fetcher(
            `${process.env.NEXT_PUBLIC_STRAPI_URL}/users?${queryuser}`
        );
        console.log(userProfile)
        setuserClient(userProfile[0]);
        setImage(userProfile[0]?.avatar ? `/f_auto,q_auto,w_150,h_150/v${userProfile[0]?.avatar}` : null)
    }

    useLayoutEffect(() => {
        setuserClient(currentUser)
        setselectedIndex(0)
    }, [router.query])
    const [selectedIndex, setselectedIndex] = useState(0)


    function openModal() {
        setIsOpen(true)
    }
    return (
        <Layout user={user}>
            <ProfileComponent userServer={currentUser} />

            <TabsProfile authUser={user} selectedIndex={selectedIndex} setselectedIndex={setselectedIndex} user={userClient} userReview={userReview} />
        </Layout>
    );
};

export default Profile;

export async function getServerSideProps({ req, query }) {
    const { userSlug } = query;
    const jwt = getTokenFromServerCookie(req);
    const qs = require('qs');

    const queryuser = qs.stringify({
        filters: {
            slug: {
                $eq: userSlug,
            }
        },
        populate: {
            categories: true,
            role: true,
            localidad: true,
            lenders: {
                populate: {
                    user_recruiter: true,
                }
            },
            service_recruiters: {
                populate: {
                    lender: true,
                }
            },
            provincia: true,
            notifications: {
                sort: ['review_updatedAt:desc'],
                limit: 10,
                populate: '*'
            },
        }
    }, {
        encodeValuesOnly: true, // prettify URL
    });
    const userProfile = await fetcher(
        `${process.env.NEXT_PUBLIC_STRAPI_URL}/users?${queryuser}`
    );
    if (!jwt) {
        return {
            props: {
                currentUser: userProfile[0] || null,
            },
        };
    } else {
        const queryuser = qs.stringify({
            populate: {
                conversations: {
                    populate: {
                        members: {
                            fields: ['id', 'name', 'slug', 'avatar', 'firstName', 'lastName']
                        }
                    }
                },
                categories: true,
                role: true,
                localidad: true,
                lenders: {
                    populate: {
                        user_recruiter: true,
                    }
                },
                service_recruiters: {
                    populate: {
                        lender: true,
                    }
                },
                provincia: true,
                notifications: {
                    sort: ['review_updatedAt:desc'],
                    limit: 10,
                    populate: '*'
                },
            }
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

        let userReview
        await axios.get(`${process.env.NEXT_PUBLIC_STRAPI_URL}/ratings/reviews/${userSlug}`)
            .then(({ data }) => {
                let filters = data.reviews?.filter(function (reviews) {
                    return reviews.author.id === user.id;
                });
                if (filters.length > 0) {
                    userReview = filters[0]
                }
                else {
                    userReview = null
                }
            }).catch((error) => {
                userReview = null
            })

        user.conversations = await getUserConversations(jwt, user.id)
        return {
            props: {
                currentUser: userProfile[0], user, userReview
            }
        };
    }
}