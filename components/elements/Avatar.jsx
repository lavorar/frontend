import Image from 'next/image'
import React from 'react'
import BackgroundLetterAvatars from './AvatarInitials'

const Avatar = ({ width, desktopWidth, fontSize, user, other }) => {

    let w = desktopWidth ? desktopWidth * 4 : (width ? width * 10 : 48)
    const href = `/f_auto,r_max,q_100,w_${w},h_${w}/v`
    return (
        <>
            {
                user?.avatar ?
                    <>
                        <div className={`hidden md:block relative aspect-square cursor-pointer  h-${desktopWidth / 4} w-${desktopWidth / 4}`
                        }>
                            <Image
                                src={href + user?.avatar}
                                alt={"Picture of the user " + user?.name}
                                layout='fill'
                                objectFit='cover'
                                quality={100}
                            // just an example
                            />
                        </div>
                        <div className={`block md:hidden relative aspect-square cursor-pointer h-${width / 4} h-${width / 4} `}>

                            <Image
                                src={href + user?.avatar}
                                alt={"Picture of the user " + user?.name}
                                layout='fill'
                                objectFit='cover'
                                quality={100}
                            // just an example
                            />
                        </div>
                    </>
                    :
                    <div className={` h-${width / 4} w-${width / 4} md:w-${desktopWidth / 4} md:h-${desktopWidth / 4} aspect-square cursor-pointer`}
                    // onClick={router.replace( '/prestadores/' + user?.Slug )}
                    >
                        <BackgroundLetterAvatars fontSize={` ${fontSize ? fontSize : "xxx-large "}`} user={user} />
                    </div>


            }
        </>
    )
}

export default Avatar