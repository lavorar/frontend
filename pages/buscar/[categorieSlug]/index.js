import axios from 'axios';
import { useRouter } from 'next/router';
import React, { useEffect } from 'react'
import { useState } from 'react';
import { getLenders, getNumberOfLenders } from '../../../lib/api';
import HomeSearchBar from "/components/elements/HomeSearchBar";
import StaticLayout from "/components/Layouts/StaticLayout";
import InfiniteScroll from 'react-infinite-scroll-component';
import { useFetchUser } from '../../../lib/AuthContext';
import SkeletonsLendes from '../../../components/Search/SkeletonsLendes';
import { slugToString } from '../../../lib/utils';
import Lenders from '../../../components/Search/Lenders';
export default function SearchCategorie({ lenders, numberOfLenders, categorieSlug }) {
    const { user, loading } = useFetchUser()
    const router = useRouter()
    const [lendersList, setlendersList] = useState(lenders)

    const getMoreLenders = async () => {
        let newlenders = await getLenders({
            start: lendersList.length,
            populate: ['provincia', 'localidad', 'categories'],
            categorieSlug: categorieSlug
        })
        setlendersList(lenders => [...lenders, ...newlenders])
    }
    useEffect(() => {
        setlendersList(lenders)
    }, [lenders])
    let rows = [], i = 0, len = 0;
    if (lendersList?.length) {
        len = (numberOfLenders - lendersList?.length) < 6 ? (numberOfLenders - lendersList?.length) : 6;
    }
    while (++i <= len) rows.push(i);
    return (
        <StaticLayout user={user} loading={loading}>
            <div className="flex flex-col  items-center w-full p-1 text-black">
                <h2 className="text-center text-gray-900 dark:text-gray-100 font-bold text-4xl pt-5">
                    {'Buscar Servicios de' + ' ' + slugToString(categorieSlug)}
                </h2>

                {lenders ?
                    <div className="flex flex-col relative items-center w-full p-1 text-black">
                        <HomeSearchBar />
                        <div className='min-h-screen'>
                            <InfiniteScroll
                                dataLength={lendersList?.length}
                                next={getMoreLenders}
                                hasMore={numberOfLenders > lendersList?.length}
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
                    :
                    <div className='min-h-screen  text-gray-900 dark:text-gray-50 text-center pt-10 text-xl '>
                        Aun no hay prestadores en esta categoria en la aplicación
                    </div>
                }
            </div>
        </StaticLayout>
    )
}



export async function getStaticProps({ params }) {
    const { categorieSlug } = params
    console.log('categorias ', categorieSlug)
    const lenders = await getLenders({
        categorieSlug: categorieSlug,
        limit: 6,
        populate: ['provincia', 'localidad', 'categories']
    })
    const numberOfLenders = await getNumberOfLenders({ categorieSlug: categorieSlug, })
    return {
        props: {
            lenders, numberOfLenders, categorieSlug
        },
        revalidate: 10,
    };
}

export async function getStaticPaths() {
    const { data: { data: categories } } = await axios.get(`${process.env.NEXT_PUBLIC_STRAPI_URL}/categories`)
    console.log(categories)

    const paths = categories.map((categorie) => ({
        params: { categorieSlug: categorie.attributes.Slug },
    }))
    return { paths, fallback: true }
}