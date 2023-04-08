import React, { useEffect, useState } from 'react'
import VerifiedIcon from "@mui/icons-material/Verified";
import LocationOnIcon from "@mui/icons-material/LocationOn";
import Image from 'next/image';
import BackgroundLetterAvatars from '../elements/AvatarInitials';
import ModalEditProfile from './ModalEditProfile'
import HireLender from '../elements/HireLender';

import { useUser } from '../../lib/AuthContext';
import HoverRating from '../elements/Rating';
import FollowButton from './FollowButton';
import SendMessageButton from '../chatapp/SendMessageButton';
import { useQuery } from 'react-query';
import { getProvincesArgentina } from '../SingUp/LenderOptions';
import { useRouter } from 'next/router';

const ProfileComponent = ({ userServer }) => {
    const router = useRouter()
    const [currentUser, setuserClient] = useState(userServer);
    const [image, setImage] = useState(currentUser?.avatar ? `/f_auto,q_auto,w_150,h_150/v${currentUser?.avatar}` : null);

    useEffect(() => {
        setuserClient(userServer)
        setImage(userServer?.avatar ? `/f_auto,q_auto,w_150,h_150/v${userServer?.avatar}` : null)
    }, [router])
    let [isOpen, setIsOpen] = useState(false)
    const { user } = useUser()
    function openModal() {
        setIsOpen(true)
    }
    const handleUserChange = (user) => {
        setuserClient(user);
    }
    const [provincesOptions, setprovincesOptions] = useState([]);
    const queryprovinces = useQuery(['provinces'], getProvincesArgentina, {
        onSettled: (data) => {
            setprovincesOptions(data);
        },
        staleTime: Infinity,
    });
    return (
        <div className='flex flex-col relative mt-16 p-2 lg:p-5 lg:h-36 rounded-md mb-10 bg-gray-300 dark:bg-gray-700 ' >
            <div className="flex flex-col  items-center lg:flex-row mt-8 gap-8 lg:justify-between ">
                <div className='flex flex-col w-full items-center lg:flex-row lg:justify-between  gap-3'>
                    <div className='flex flex-col w-full items-center lg:flex-row gap-3 '>
                        {
                            image ?

                                <div className="-mt-28  self-center w-[150px] h-[150px] relative aspect-square cursor-pointer"
                                // onClick={router.replace( '/prestadores/' + user?.Slug )}
                                >
                                    <Image
                                        src={image}
                                        alt={"Picture of the user " + currentUser?.name}
                                        layout="fill" // required                   
                                        objectFit="cover"// change to suit your needs
                                        className="rounded-full w-full"
                                        loading="eager"
                                        priority={true}
                                        quality={100} // just an example
                                    />

                                </div>
                                :
                                <div className="-mt-24  w-[150px] h-[150px] aspect-square cursor-pointer"
                                // onClick={router.replace( '/prestadores/' + user?.Slug )}
                                >
                                    <BackgroundLetterAvatars fontSize='xxx-large' firtsName={currentUser?.firstName} lastName={currentUser?.lastName} />
                                </div>

                        }
                        <div className="lg:-mt-8 flex flex-col justify-self-start">
                            <div className="text-2xl text-center lg:text-left ">
                                {currentUser?.name}
                                <VerifiedIcon sx={{ fontSize: 24 }} className="ml-2" />
                            </div>
                            <div className="flex justify-center text-md text-center lg:justify-start items-center  lg:items-start pt-2">
                                <LocationOnIcon sx={{ fontSize: 20 }} />{(currentUser?.provincia ? currentUser.provincia.name + ', ' : 'Provincia , ') + (currentUser?.localidad ? currentUser.localidad.name : 'Ciudad')} <div className=" pl-1">
                                </div>
                            </div>
                            {currentUser?.role.id === 3 && <div className='flex self-center lg:self-start mt-2'>
                                <HoverRating
                                    hover={-1}
                                    counts={currentUser?.countsReview}
                                    value={currentUser?.averageScore}
                                    readOnly={true} />
                            </div>}
                        </div>
                    </div>
                    {user?.id !== currentUser?.id &&
                        <div className="flex lg:justify-end py-2 gap-2 items-center">
                            {/* <HireLender authUser={user} lender={currentUser} /> */}
                            <FollowButton user={user} currentUser={currentUser} />
                            <SendMessageButton lender={currentUser} />
                        </div>
                    }

                    {user && user.Slug === currentUser?.Slug && <div className="flex md:absolute my-1  top-4 right-4 items-center">
                        <ModalEditProfile isOpen={isOpen}
                            image={image}
                            setImage={setImage}
                            currentUser={currentUser}
                            setcurrentUser={handleUserChange}
                            setIsOpen={setIsOpen}
                            provincesOptions={provincesOptions}
                        // closeModal={closeModal}
                        />
                        <button
                            type="button"
                            onClick={openModal}
                            className="py-2 px-3   text-sm font-medium text-gray-900 focus:outline-none bg-white rounded-lg hover:bg-gray-100 hover:text-blue-700  dark:bg-gray-800 dark:text-gray-100  dark:hover:text-white dark:hover:bg-gray-600"
                        >
                            Editar Perfil
                        </button>
                    </div>}
                </div>


            </div>

        </div>
    )
}

export default ProfileComponent