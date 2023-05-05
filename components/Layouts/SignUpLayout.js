import Head from 'next/head'
import React, { Children } from 'react'
import FormProvider from '../../context/FormContext'
import { UserProvider } from '../../lib/AuthContext'
import MainHead from './head/MainHead'
import Link from 'next/link'
import Image from 'next/image'

const SignUpLayout = ({ user, loading = false, title = 'Sign up', desscription = 'Sign up', children }) => {
    return (
        <UserProvider value={{ user, loading }}>
            <FormProvider>
                <MainHead title={title} description={desscription}></MainHead>
                <div className='w-full  border-b border-slate-100/50 '>
                    <div className='container flex justify-center  '>
                        <nav className="bg-gray-100 dark:bg-stone-950  text-gray-900 max-w-screen-sm dark:text-white-ghost px-2 sm:px-4 p-0 sticky w-full z-10 top-0 py-2 md:py-4 left-0">
                            <Link href="/" className='cursor-pointer' >
                                <a>
                                    <div className={`flex items-end w-[8.4rem] cursor-pointer`}>
                                        <Image src="/v1682985275/laburar-logo-horizontal.png" height={112} width={375} className={`flex items-center md:hidden cursor-pointer`} alt="Laburar Logo" />
                                        {/* <span className={" hidden md:block text-xl font-semibold whitespace-nowrap dark:text-white"}>aburar</span> */}
                                    </div>
                                </a>
                            </Link>
                        </nav>
                    </div>
                </div>
                <div className='mt-3 p-2 md:p-5'>

                    {children}
                </div>
            </FormProvider>
        </UserProvider>
    )
}

export default SignUpLayout