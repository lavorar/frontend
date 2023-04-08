import Link from 'next/link'
import React from 'react'
import { useUser } from '../../lib/AuthContext'

export default function SendMessageButton({ lender }) {


    let href = '/mensajes/nuevo'


    return (
        <Link href={{
            pathname: href,
            query: {
                userReciever: JSON.stringify({
                    id: lender?.id,
                    slug: lender?.slug,
                    name: lender?.name,
                    avatar: lender?.avatar,
                    firstName: lender?.firstName,
                    lastName: lender?.lastName,
                })
            }
        }} >
            <button
                type="button"
                className="focus:outline-none text-gray-900 bg-orange-brand hover:bg-yellow-500 focus:ring-2 focus:ring-orange-high dark:focus:ring-orange-high font-medium rounded-lg text-base px-3 py-2 mr-2 my-2 "
            >
                Mensaje
            </button>
        </Link>
    )
}

