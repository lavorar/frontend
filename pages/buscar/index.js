import React from 'react'
import { useState } from 'react';
import { getLenders, getNumberOfLenders } from '../../lib/api';
import HomeSearchBar from "/components/elements/HomeSearchBar";
import StaticLayout from "/components/Layouts/StaticLayout";
import InfiniteScroll from 'react-infinite-scroll-component';
import Lenders from '../../components/Search/Lenders';
import { useFetchUser } from '../../lib/AuthContext';
import SkeletonsLendes from '../../components/Search/SkeletonsLendes';


export default function Search({ lenders, numberOfLenders }) {
    const { user, loading } = useFetchUser()
    const [lendersList, setlenders] = useState(lenders)

    const getMoreLenders = async () => {
        let newlenders = await getLenders({
            start: lendersList.length,
            populate: ['provincia', 'localidad', 'categories']
        })
        setlenders(lenders => [...lenders, ...newlenders])
    }
    let rows = [], i = 0, len = 0;
    if (lendersList?.length) {
        len = (numberOfLenders - lendersList?.length)
            < 6 ? (numberOfLenders - lendersList?.length) : 6;
    }
    while (++i <= len) rows.push(i);
    return (
        <StaticLayout title='Buscar' descripcion='busqueda de todos los prestadores' user={user} loading={loading}>
            <h2 className="text-center text-gray-900 dark:text-gray-100 font-bold text-4xl pt-5">
                {'BUSCAR PRESTADORES DE SERVICIOS'}
            </h2>
            <div className="flex flex-col relative   items-center w-full p-1 text-black">
                <HomeSearchBar />
                <div className='min-h-screen'>
                    <InfiniteScroll
                        dataLength={lendersList.length}
                        next={getMoreLenders}
                        hasMore={numberOfLenders > lendersList.length}
                        loader={
                            <div className="mt-10 flex flex-wrap  justify-evenly  gap-4 lg:gap-8 w-full lg:px-5">
                                {rows.map((row) => (
                                    <SkeletonsLendes key={row} />
                                ))}
                            </div>}
                        endMessage={
                            <p className=" text-gray-900 dark:text-gray-50 text-center pt-10">
                                <b>Ya viste todos los prestadores de esta pagina!</b>
                            </p>
                        }>
                        <Lenders lenders={lendersList} />
                    </InfiniteScroll>
                </div>
            </div>
        </StaticLayout >

    )
}


export async function getStaticProps({ req }) {

    const lenders = await getLenders({
        limit: 6,
        populate: ['provincia', 'localidad']
    })
    const numberOfLenders = await getNumberOfLenders([])
    return {
        props: {
            lenders, numberOfLenders
        },
        revalidate: 10,
    };
}