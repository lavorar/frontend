import React, { useState } from 'react'
import VerifiedIcon from "@mui/icons-material/Verified";
import LocationOnIcon from "@mui/icons-material/LocationOn";
import BasicRating from '/components/elements/Rating';
import ButtonCard from '/components/elements/ButtonCard';
import Image from 'next/image';
import ModalEditProfile from './ModalEditProfile'
import BackgroundLetterAvatars from '/components/elements/AvatarInitials';
import AddAPhoto from '@mui/icons-material/AddAPhoto';

const MyProfileComponent = ({ user }) => {
    let [isOpen, setIsOpen] = useState(false)
    // function closeModal() {
    //     setIsOpen(false)
    // }

    function openModal() {
        setIsOpen(true)
    }

    return (
        <div className='flex flex-col '>
            {user ?
                <>
                    <div className='mb-10'>
                        <h2 className="text-5xl text-center font-bold">
                            Bienvenido {' '}
                            <span className="bg-clip-text text-transparent bg-gradient-to-r from-blue-500 to-teal-400">
                                {user?.name}
                            </span>
                            <span>👋</span>
                        </h2>
                    </div>
                    <ModalEditProfile isOpen={isOpen}
                        user={user}
                        setIsOpen={setIsOpen}
                    // closeModal={closeModal}
                    >

                    </ModalEditProfile>
                    <div className='flex  relative flex-col rounded-md bg-gray-300 dark:bg-gray-700' >
                        <div className='flex flex-col gap-2 border-b dark:border-gray-400  p-5 '>
                            <div className="flex flex-row justify-between">
                                <div className="flex flex-row mt-8 gap-4 flex-wrap">
                                    {
                                        user.avatar ?

                                            <div className=" -mt-8 h-[100px] w-[100px] md:w-[150px] md:h-[150px] relative aspect-square cursor-pointer"
                                            // onClick={router.replace( '/prestadores/' + user?.Slug )}
                                            >
                                                <Image
                                                    src={`/f_auto,q_auto,w_150,h_150/v${user.avatar}`}
                                                    alt={"Picture of the user " + user?.name}
                                                    layout="fill" // required
                                                    objectFit="cover"// change to suit your needs
                                                    className="rounded-full w-full"
                                                // quality={100} // just an example
                                                />

                                            </div>
                                            :
                                            <div className=" -mt-8 h-[100px] w-[100px] md:w-[150px] md:h-[150px] aspect-square cursor-pointer"
                                            // onClick={router.replace( '/prestadores/' + user?.Slug )}
                                            >
                                                <BackgroundLetterAvatars fontSize='xxx-large' user={user} />
                                            </div>
                                    }
                                    {/* {user.avatar ? (
                                        <img
                                            src={`https://res.cloudinary.com/dozjn0kxw/image/upload/f_auto,q_auto,w_150,h_150,c_thumb,r_max/v${user.avatar}`}
                                            alt="Profile"
                                        />
                                    )
                                        :
                                        <></>
                                    } */}

                                    <div className="flex flex-col ">
                                        <div className="flex justify-start items-end text-3xl ">
                                            {user?.firstName + ' ' + user?.lastName}
                                            <VerifiedIcon sx={{ fontSize: 30 }} className="ml-2" />
                                        </div>
                                        <div className="flex justify-start items-center pt-2">
                                            <LocationOnIcon sx={{ fontSize: 20 }} /> <div className="text-xl pl-1">
                                                {(user.provincia ? user.provincia.name + ', ' : 'Provincia , ') + (user.localidad ? user.localidad.name : 'Ciudad')}</div>
                                        </div>
                                    </div>
                                </div>
                                <div className="flex absolute top-1 right-1 items-center">
                                    <button
                                        type="button"
                                        onClick={openModal}
                                        className="py-2 px-3   text-base font-medium text-gray-900 focus:outline-none bg-white rounded-lg hover:bg-gray-100 hover:text-blue-700  dark:bg-gray-800 dark:text-gray-400  dark:hover:text-white dark:hover:bg-gray-600"
                                    >
                                        Editar Perfil
                                    </button>
                                </div>
                            </div>
                            {user.role.id === 3 &&
                                <div>
                                    <BasicRating
                                        hover={-1}
                                        counts={user?.countsReview}
                                        value={user?.averageScore}
                                        readOnly={true} />
                                </div>
                            }
                            <span className="  pt-2 mx-2  mb-1 px-1 text-base font-medium ">
                                {user.aboutme ? user.aboutme : 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Assumend    laboriosam, quod aut officiis ea deleniti repellat nisi delectus magnam reiciendis?'}
                            </span>
                        </div>
                        {user.role?.id === 3 ?
                            <div className='flex p-5 flex-col '>
                                <div className='flex flex-row gap-20  py-3 justify-start items-center'>
                                    <span>
                                        Skills
                                    </span>
                                    <div className='flex flex-wrap'>
                                        {user.categories ?
                                            user.categories.map((categorie) => (
                                                <ButtonCard
                                                    key={categorie.id}
                                                    href={'/buscar/' + categorie.Slug}
                                                    text={categorie.name} />
                                            ))
                                            :
                                            <>
                                            </>}
                                        {/* <ButtonCard text="Categoria" />
                                        <ButtonCard text="Categoria" />
                                        <ButtonCard text="Categoria" /> */}
                                    </div>
                                </div>
                                <div className='flex flex-row gap-20  py-3 justify-start items-center'>
                                    <span>
                                        Edad
                                    </span>
                                    <div className='flex'>
                                        {user.birth}
                                    </div>
                                </div>
                            </div>
                            :
                            <>
                            </>}

                    </div>
                </>
                :
                <>
                </>}
            {/* {avatar && (
                    <img
                        src={`https://res.cloudinary.com/tamas-demo/image/upload/f_auto,q_auto,w_150,h_150,g_face,c_thumb,r_max/${avatar}`}
                        alt="Profile"
                    />
                )}
                {avatar === 'default_avatar' && (
                    <div>
                        <h4>Selecciona una imagen</h4>
                        <input type="file" onChange={uploadToClient} />
                        <button
                            className="md:p-2 rounded py-2 text-black bg-purple-200 p-2"
                            type="submit"
                            onClick={uploadToServer}
                        >
                            Set Profile Image
                        </button>
                    </div>
                )} */}
            {/* eslint-disable @next/next/no-img-element */}

        </div>
    )
}

export default MyProfileComponent
