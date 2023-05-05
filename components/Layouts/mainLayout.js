import Head from 'next/head';
import { UserProvider, useUser } from '../../lib/AuthContext';
import { useRouter } from 'next/router'
import Header from "../elements/Header";
import IconWithButton from "../elements/IconWithButton"
import SearchRoundedIcon from '@mui/icons-material/SearchRounded';
import HomeRoundedIcon from '@mui/icons-material/HomeRounded';
import PersonRoundedIcon from '@mui/icons-material/PersonRounded';
import BookmarkOutlinedIcon from '@mui/icons-material/BookmarkOutlined';
import WorkRoundedIcon from '@mui/icons-material/WorkRounded';
import PendingRoundedIcon from '@mui/icons-material/PendingRounded';
import NavMobile from '../elements/NavMobile';
import Link from 'next/link';
import MainHead from './head/MainHead';
import Image from 'next/image';


const Layout = ({ user, loading = false, children, title = 'Laburar', description = 'Plataforma web para encontrar y contratar prestadores de servicios' }) => {

    const router = useRouter()
    const Menus = [
        { title: "Inicio", src: <HomeRoundedIcon fontSize={'medium'} />, always: true, href: '/' },
        { title: "Buscar", src: <SearchRoundedIcon fontSize={'medium'} />, always: true, href: '/buscar' },
        { title: "Mi Perfil", src: <PersonRoundedIcon fontSize={'medium'} />, always: user ? true : false, gap: true, href: '/' + user?.Slug },
        { title: "Contratados", src: <BookmarkOutlinedIcon fontSize={'medium'} />, always: user ? true : false, href: '/' + user?.Slug + '/contratados' },
        { title: "Pendientes", src: <PendingRoundedIcon fontSize={'medium'} />, always: user ? true : false, href: '/' + user?.Slug + '/pendientes', gap: false },
        { title: "Mis Trabajos ", src: <WorkRoundedIcon fontSize={'medium'} />, always: user?.role?.id === 3 ? true : false, href: '/' + user?.Slug + '/trabajos-realizados' },
        // { title: "Horario y Agenda (proximamente)", src: <EventAvailableRoundedIcon color="disabled" fontSize={'medium'} />, always: user ? true : false },
        // { title: "Estadisticas (proximamente)", src: <TrendingUpRoundedIcon color="disabled" fontSize={'medium'} />, always: user ? true : false, gap: true },
        // { title: "Ayuda (proximamente)", src: <HelpRoundedIcon color="disabled" fontSize={'medium'} />, always: true },

    ];
    return (
        <UserProvider value={{ user, loading }}>
            <MainHead title={title} description={description} >

            </MainHead>


            <main>

                <div className="flex md:flex-row  ">
                    <div
                        className={` w-20 xl:w-60
                                 hidden md:flex z-40 lg:items-center xl:items-baseline flex-col bg-transparent border-opacity-10 dark:border-opacity-10  border-r  border-gray-500 dark:border-gray-100  text-gray-900 dark:text-white-ghost p-3 justify-between fixed pt-8 h-screen  `}
                    >
                        <div className="flex flex-col gap-y-2 w-full">
                            <Link href={'/'} className=''>
                                <a
                                    className=" cursor-pointer  xl:ml-4 w-32 hidden xl:block ">
                                    <Image src="/v1682985275/laburar-logo-horizontal.png" height={112} width={375} className={`flex items-center md:hidden cursor-pointer`} alt="Laburar Logo" />

                                </a>

                            </Link>
                            <Link href={'/'} className=''>
                                <a
                                    className=" cursor-pointer ml-2  xl:hidden ">
                                    <Image src="/v1682460739/isologo-laborar.png" height={44} width={44} className={`flex items-center md:hidden cursor-pointer`} alt="Laburar Logo" />

                                </a>

                            </Link>
                            <ul className="pt-6 w-full">
                                {Menus.map((Menu, index) => (
                                    Menu.always ?
                                        <Link key={index} href={Menu.href ? Menu.href : ''}>
                                            <a>
                                                <li

                                                    className={`flex rounded-md p-2  group cursor-pointer hover:bg-gray-300 dark:hover:bg-gray-700 text-gray-900 dark:text-white-ghost text-md items-center gap-x-2
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

                                                    <span className={`hidden lg:hidden xl:block overflow-hidden whitespace-nowrap origin-left duration-700`}>
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
                        </div>

                        <div className="flex justify-center items-center w-full py-5">
                            <p className="text-center space-x-1 mt-2">
                                <span className="text-gray-700 dark:text-gray-300 text-sm font-semibold">Apoya nuestro trabajo! </span>
                                <a className="text-orange-high text-center cursor-pointer text-sm font-semibold"
                                    onClick={() => router.replace('/donate')}
                                >Donar</a>
                            </p>
                        </div>
                    </div>

                    <div className={`md:pl-20 xl:pl-60  z-10   flex flex-row justify-center   w-full   md:flex-1  `}>
                        <div className="w-full border-opacity-10 dark:border-opacity-10  border-r  border-gray-500 dark:border-gray-100 ">
                            <Header staticLayout={false} >
                            </Header>
                            <div className='pt-5 w-full h-[70%] mb-20 p-4  md:mb-0 '>

                                {children}
                            </div>

                        </div>
                        {/* <AppHeader /> */}
                        <div className={'xl:w-[500px]  xl:flex-col hidden xl:flex  xl:justify-center xl:items-center right-0 bg-transparent ml-2 p-1 '} >
                            <div className='flex flex-col w-full items-center justify-center pt-64' >
                                {/* <Card lender={user} authUser={user} />
                                <Card lender={user} authUser={user} />
                                <Card lender={user} authUser={user} /> */}
                            </div>
                        </div>
                    </div>

                </div >
                <div className='md:hidden'>
                    <NavMobile user={user} />
                </div>
            </main>
        </UserProvider>
    );
};
export default Layout;



