import Head from 'next/head';

import { UserProvider, useUser } from '../../lib/AuthContext';
import { useState } from "react";
import { useRouter } from 'next/router'
import Header from "../elements/Header";
import IconWithButton from "../elements/IconWithButton"
import SearchRoundedIcon from '@mui/icons-material/SearchRounded';
import HomeRoundedIcon from '@mui/icons-material/HomeRounded';
import PersonRoundedIcon from '@mui/icons-material/PersonRounded';
import ArrowBackIosNewRoundedIcon from '@mui/icons-material/ArrowBackIosNewRounded';
import AssignmentTurnedInRoundedIcon from '@mui/icons-material/AssignmentTurnedInRounded';
import BookmarkOutlinedIcon from '@mui/icons-material/BookmarkOutlined';
import WorkRoundedIcon from '@mui/icons-material/WorkRounded';
import EventAvailableRoundedIcon from '@mui/icons-material/EventAvailableRounded';
import HelpRoundedIcon from '@mui/icons-material/HelpRounded';
import PendingRoundedIcon from '@mui/icons-material/PendingRounded';
import TrendingUpRoundedIcon from '@mui/icons-material/TrendingUpRounded';
import { LayoutProvider } from "../../context/LayoutContext";
import Card from "../elements/Card";
import NavMobile from '../elements/NavMobile';
import { getTokenFromLocalCookie, getTokenFromServerCookie } from '../../lib/auth';
import axios from 'axios';
import Link from 'next/link';


const Layout = ({ user, loading = false, children }) => {
    const router = useRouter()
    const Menus = [
        { title: "Inicio", src: <HomeRoundedIcon fontSize={'large'} />, always: true, href: '/' },
        { title: "Buscar", src: <SearchRoundedIcon fontSize={'large'} />, always: true, href: '/buscar' },
        { title: "Mi Perfil", src: <PersonRoundedIcon fontSize={'large'} />, always: user ? true : false, gap: true, href: '/' + user?.Slug },
        { title: "Contratados", src: <BookmarkOutlinedIcon fontSize={'large'} />, always: user ? true : false, href: '/' + user?.Slug + '/contratados' },
        { title: "Pendientes", src: <PendingRoundedIcon fontSize={'large'} />, always: user ? true : false, href: '/' + user?.Slug + '/pendientes', gap: false },
        { title: "Mis Trabajos ", src: <WorkRoundedIcon fontSize={'large'} />, always: user?.role?.id === 3 ? true : false, href: '/' + user?.Slug + '/trabajos-realizados' },
        // { title: "Horario y Agenda (proximamente)", src: <EventAvailableRoundedIcon color="disabled" fontSize={'large'} />, always: user ? true : false },
        // { title: "Estadisticas (proximamente)", src: <TrendingUpRoundedIcon color="disabled" fontSize={'medium'} />, always: user ? true : false, gap: true },
        // { title: "Ayuda (proximamente)", src: <HelpRoundedIcon color="disabled" fontSize={'medium'} />, always: true },

    ];
    return (
        <UserProvider value={{ user, loading }}>
            <Head>
                <link rel="apple-touch-icon" sizes="180x180" href="/apple-touch-icon.png" />
                <link rel="icon" type="image/png" sizes="32x32" href="/favicon-32x32.png" />
                <link rel="icon" type="image/png" sizes="16x16" href="/favicon-16x16.png" />
                <link rel="manifest" href="/site.webmanifest" />
                <link rel="mask-icon" href="/safari-pinned-tab.svg" color="#5bbad5" />
                <meta name="msapplication-TileColor" content="#da532c" />
                <meta name="theme-color" content="#ffffff" />
                <link width="50" rel="icon" type="image/svg+xml" href="/Lavorar-logo-negativo.svg" />
                <title>Lavorar</title>
            </Head>


            <main>
                <div className="flex md:flex-row max-h-screen h-screen ">
                    <div
                        className={` w-20 xl:w-64
                                 hidden md:flex z-40 lg:items-center h-full xl:items-baseline md:flex-col bg-transparent justify-around border-0 border-r border-gray-200 dark:border-gray-500 border-opacity-80 dark:border-opacity-80 text-gray-900 dark:text-white-ghost p-2 px-3  fixed pt-8   `}
                    >
                        {/* <div
                            className={`absolute bg-gray-900 hidden xl:block cursor-pointer group -right-5 top-12
                            rounded-full duration-300  ${!open && "rotate-180"}`}>
                            <IconWithButton
                                onClick={setOpenBar}
                            >
                                <ArrowBackIosNewRoundedIcon fontSize="small" />
                            </IconWithButton>
                        </div> */}


                        <Link href={'/'}>
                            <a
                                className=" cursor-pointer flex flex-row gap-x-2 justify-center items-center xl:pl-2 ">
                                <img
                                    src="/Lavorar-logo-negativo.svg"
                                    className={`  w-11 xl:w-16  "
                                    `}
                                />

                                <h1
                                    className={`text-orange-brand origin-left hidden xl:block font-medium text-xl duration-200 $`}
                                >
                                    Laborar
                                </h1>
                            </a>
                        </Link>
                        <ul className="pt-6 w-full  xl:pr-2 ">
                            {Menus.map((Menu, index) => (
                                Menu.always ?
                                    <Link key={index} href={Menu.href ? Menu.href : ''}>
                                        <a className='w-full flex flex-col items-center  xl:items-start'>
                                            <li

                                                className={`flex rounded-full xl:w-full overflow-hidden justify-center xl:justify-start m-2 items-center group cursor-pointer hover:bg-gray-300 dark:hover:bg-gray-700  text-gray-900 dark:text-white-ghost text-md gap-x-2
                                            ${Menu.gap ? "mt-9" : "mt-2"}
                                } `}
                                            >
                                                <div

                                                    className={`cursor-pointer  duration-300  text-gray-900  dark:text-white-ghost`}>
                                                    <IconWithButton
                                                    >
                                                        {Menu.src}
                                                    </IconWithButton>
                                                </div>

                                                <span className={` hidden xl:block    whitespace-nowrap origin-left duration-700`}>
                                                    {Menu.title}
                                                </span>

                                            </li>
                                        </a>
                                    </Link>
                                    :
                                    <div key={index}>
                                    </div>
                            ))}
                        </ul>
                        <div className='mt-auto mb-5 '>
                            <p className="text-center  space-x-1 mt-2">
                                <span className="text-gray-700 dark:text-gray-300 text-sm font-semibold">Apoya nuestro trabajo! </span>
                                <a className="text-orange-high text-center cursor-pointer text-sm font-semibold"
                                    onClick={() => router.replace('/donate')}
                                >Donar</a>
                            </p>
                        </div>
                    </div>
                    <div className={`md:pl-20 xl:pl-64  z-10   flex flex-row justify-between    w-full   md:flex-1 h-full  `}>
                        <div className="w-full  h-[calc(100dvh-5rem)] border-opacity-10 dark:border-opacity-10   border-r  border-gray-500  dark:border-gray-100  ">
                            <Header user={user} >

                            </Header>
                            <div className='flex flex-row  w-full h-full   md:pb-0 '>

                                {children}
                                {/* <div className={'xl:w-[400px]  xl:flex-col hidden xl:flex  xl:justify-center xl:items-center right-0 bg-transparent ml-2 p-1 '} >
                                    <div className='flex flex-col w-full items-center justify-center pt-64' >
                                        <Card lender={user} authUser={user} />
                                <Card lender={user} authUser={user} />
                                <Card lender={user} authUser={user} />
                                    </div>
                                </div> */}
                            </div>

                        </div>
                        {/* <AppHeader /> */}
                        {/* <div className={'xl:w-[400px]  xl:flex-col hidden xl:flex  xl:justify-center xl:items-center right-0 bg-transparent ml-2 p-1 '} >
                            <div className='flex flex-col w-full items-center justify-center pt-64' >
                                <Card lender={user} authUser={user} />
                                <Card lender={user} authUser={user} />
                                <Card lender={user} authUser={user} />
                            </div>
                        </div> */}
                    </div>

                </div >
                {/* <NavMobile user={user} /> */}
            </main>
        </UserProvider>
    );
};
export default Layout;