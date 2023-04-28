import Head from 'next/head'
import React from 'react'
import FormProvider from '../../context/FormContext'
import { UserProvider } from '../../lib/AuthContext'
import Header from '../elements/Header'
import Card from '../elements/Card'
import NavMobile from '../elements/NavMobile'

export default function StaticLAuout({ user, loading = false, title = 'Laburar', description = 'Plataforma web para encontrar y contratar prestadores de servicios', children }) {
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
                <meta name="description" content={description} />
                <link width="50" rel="icon" type="image/svg+xml" href="/android-chrome-512x512.png" />
                <title>{title}</title>
            </Head>


            <Header staticLayout={true} />

            <div className='flex relative justify-center mt-3 p-2 md:p-5 '>
                <div className='max-w-5xl'>
                    {children}
                </div>
                <div className='hidden xl:flex xl:flex-col xl:sticky top-36 w-80 h-[90dvh]    items-center ' >
                    <h2 className="text-center text-4xl font-bold my-5">Recomendados</h2>
                    <section className='flex flex-col w-full justify-center text-center'> Seccion publicitaria</section>
                </div>
                <NavMobile />
            </div>
        </UserProvider>
    )
}
