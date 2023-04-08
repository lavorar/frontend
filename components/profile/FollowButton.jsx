import { Fragment, useState } from "react";
import { useMutation, useQuery } from "react-query";
import { Dialog, Transition } from "@headlessui/react";

import axios from "axios";
import { getTokenFromLocalCookie } from "../../lib/auth";
import Spinner from "../elements/Spinner";
import { UseLayoutSocket } from "../../context/LayoutContext";

export default function FollowButton({ user, currentUser }) {
    const [followRequest, setfollowRequest] = useState(null);
    const [isModalOpen, setIsModalOpen] = useState(false);
    const jwt = getTokenFromLocalCookie()
    const { socket } = UseLayoutSocket();
    const qs = require('qs');
    const query = qs.stringify({
        filters: {
            followerUser: user.id,
            followingUser: currentUser.id,
        },
    }, {
        encodeValuesOnly: true, // prettify URL
    });

    const { isLoading: followIsLoanding } = useQuery(
        ["following", currentUser.id],
        async () => {
            const { data } = await axios.get(`${process.env.NEXT_PUBLIC_STRAPI_URL}/followers?${query}`, {
                headers: {
                    Authorization: `Bearer ${jwt}`,
                }
            });
            return data;
        },
        {
            onSuccess: ({ data }) => {
                if (data.length > 0) {
                    setfollowRequest(data[0])
                }
            }
        }
    );
    const mutateFollow = useMutation(
        async () => {
            await axios.post(`${process.env.NEXT_PUBLIC_STRAPI_URL}/followers`, {
                data: {
                    followerUser: user.id,
                    followingUser: currentUser.id,
                }
            },
                {
                    headers: {
                        Authorization: `Bearer ${jwt}`,
                    },
                }).then(({ data }) => {
                    data.type = "FriendRequest"
                    data.review_updatedAt = new Date()
                    data.sender = user.id
                    const userSubset = {
                        name: user.name,
                        firstName: user.firstName,
                        lastName: user.lastName,
                        avatar: user.avatar,
                        slug: user.Slug,
                        id: user.id
                    };
                    data.user_request = userSubset
                    console.log(data)
                    socket.current.emit("sendNotification", { senderId: user.id, receiverId: currentUser.id, notification: data })
                    setfollowRequest(data)

                });
        },
    );
    const mutateUnfollow = useMutation(
        async () => {
            return await axios.delete(`${process.env.NEXT_PUBLIC_STRAPI_URL}/followers/${followRequest.id}`, {
                headers: {
                    Authorization: `Bearer ${jwt}`,
                }
            });
        },
        {
            onSuccess: ({ data }) => {
                data.type = "FriendRequest"
                data.review_updatedAt = new Date()
                data.sender = user.id
                console.log(user)
                const userSubset = {
                    name: user.name,
                    firstName: user.firstName,
                    lastName: user.lastName,
                    avatar: user.avatar,
                    slug: user.Slug,
                    id: user.id
                };
                data.user_request = userSubset
                console.log(data)
                socket.current.emit("deleteNotification", { senderId: user.id, receiverId: currentUser.id, notification: data })
                setfollowRequest(null)
            },
        }
    );

    const handleButtonClick = () => {
        if (followRequest) {
            setIsModalOpen(true);
        } else {
            mutateFollow.mutate({
                followerUser: currentUser.id,
                followingUser: user.id,
            });
        }
    };

    const handleUnpending = () => {
        mutateUnfollow.mutate();
    }
    const handleModalConfirm = () => {
        mutateUnfollow.mutate();
        setIsModalOpen(false);
    };

    const PendingButton = () => {
        return (mutateUnfollow.isLoading ?
            <div className="flex justify-center bg-blue-500
                            text-gray-50 px-4 py-2 rounded-md focus:outline-none items-center">
                <Spinner />
                cargando...
            </div>
            :
            <button className="flex justify-center bg-blue-500
                         text-gray-50 px-4 py-2 rounded-md focus:outline-none items-center"
                onClick={handleUnpending}
            >
                Pendiente
            </button>
        )
    }
    const FollowStatusButton = () => {
        return (mutateFollow.isLoading ?
            <div className="flex justify-center bg-blue-500
                            text-gray-50 px-4 py-2 rounded-md focus:outline-none items-center">
                <Spinner />
                cargando...
            </div>
            :
            <button className="flex justify-center bg-blue-500
                         text-gray-50 px-4 py-2 rounded-md focus:outline-none items-center"
                onClick={handleButtonClick}
            >
                Seguir
            </button>
        )
    }

    return (
        <div className="relative">
            {followIsLoanding ?
                <div className="flex justify-center bg-blue-500
                         text-gray-50 px-4 py-2 rounded-md focus:outline-none items-center">
                    <Spinner />
                    cargando...
                </div>
                :
                <>
                    {
                        followRequest ?
                            <>{
                                followRequest.acepted ?
                                    <button className="flex justify-center bg-blue-500
                         text-gray-50 px-4 py-2 rounded-md focus:outline-none items-center"
                                        onClick={handleButtonClick}
                                    >
                                        Dejar de seguir
                                    </button>
                                    :
                                    <PendingButton />
                            }</>
                            :
                            <FollowStatusButton />
                    }
                </>
            }


            <Transition appear show={isModalOpen} as={Fragment}>
                <Dialog as="div" className="relative z-10" onClose={() => setIsModalOpen(false)} >
                    <Transition.Child
                        as={Fragment}
                        enter="ease-out duration-300"
                        enterFrom="opacity-0"
                        enterTo="opacity-100"
                        leave="ease-in duration-200"
                        leaveFrom="opacity-100"
                        leaveTo="opacity-0"
                    >
                        <div className="fixed inset-0 bg-black bg-opacity-25" />
                    </Transition.Child>

                    <div className="fixed inset-0 overflow-y-auto">
                        <div className="flex min-h-full items-center justify-center p-4 text-center">
                            <Transition.Child
                                as={Fragment}
                                enter="ease-out duration-300"
                                enterFrom="opacity-0 scale-95"
                                enterTo="opacity-100 scale-100"
                                leave="ease-in duration-200"
                                leaveFrom="opacity-100 scale-100"
                                leaveTo="opacity-0 scale-95"
                            >
                                <Dialog.Panel className="w-full max-w-md transform overflow-hidden rounded-2xl bg-white dark:bg-gray-900 p-6 text-left align-middle shadow-xl transition-all">

                                    <Dialog.Title>¿Dejar de seguir?</Dialog.Title>
                                    <Dialog.Description>
                                        Si dejas de seguir a este usuario, ya no recibirás sus actualizaciones.
                                    </Dialog.Description>
                                    <div className="flex justify-end gap-2 mt-4">
                                        <button
                                            className="px-4 py-2  text-gray-500 hover:text-gray-700"
                                            onClick={() => setIsModalOpen(false)}
                                        >
                                            Cancelar
                                        </button>
                                        <button
                                            className="bg-red-500 text-white px-4 py-2 rounded-md focus:outline-none"
                                            onClick={handleModalConfirm}
                                        >
                                            Dejar de seguir
                                        </button>
                                    </div>
                                </Dialog.Panel>
                            </Transition.Child>
                        </div>
                    </div>
                </Dialog>
            </Transition>

        </div>
    );
};

