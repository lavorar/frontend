import React from 'react'
import { useUser } from '../../lib/AuthContext'
import Card from '../elements/Card'
import SkeletonsLendes from './SkeletonsLendes'

export default function Lenders({ lenders }) {
    const { user } = useUser()
    return (
        <div className="mt-10 flex flex-wrap  justify-evenly  gap-4 lg:gap-8 w-full lg:px-5">
            {
                lenders?.map(function (lender) {
                    return (
                        <Card key={lender.id} authUser={user} lender={lender} slug={lender.Slug} />
                    )
                })
            }
        </div>
    )
}

