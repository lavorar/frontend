import axios from "axios";
import { useState } from "react";
import { useQuery } from "react-query";
import Card from "../components/elements/Card";
import HomeSearchBar from "../components/elements/HomeSearchBar";
import StaticLayout from "../components/Layouts/StaticLayout";
import Lenders from "../components/Search/Lenders";
import { fetcher, getLenders, getUser } from "../lib/api";
import { getTokenFromLocalCookie } from "../lib/auth";
import { useFetchUser, useUser } from "../lib/AuthContext";

export default function Home({ lenders }) {

  const jwt = getTokenFromLocalCookie();
  const { data, isLoading, isSuccess, error } = useQuery(['user'], () => getUser(jwt), {
    staleTime: 1000 * 60 * 60 * 24,
    enabled: Boolean(jwt)
  })
  const { user, loading } = useFetchUser()

  return (
    <StaticLayout user={user} loading={loading}>      <div className="flex flex-col  items-center w-full p-1 text-black">
      <HomeSearchBar />
      {/* <div className="mt-10 flex flex-wrap  justify-evenly  gap-4 lg:gap-8 w-full lg:px-5">
           {
             users?.map((lender) => (
               <Card key={lender.id} authUser={user} lender={lender} slug={lender.Slug}
               />
             ))
           }
         </div> */}
      <Lenders lenders={lenders} />
    </div>
    </StaticLayout>

  )
}

export async function getStaticProps({ req }) {

  const lenders = await getLenders({
    limit: 6,
    populate: ['provincia', 'localidad']
  })
  return {
    props: {
      lenders
    },
    revalidate: 60,
  };
}



