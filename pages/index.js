import axios from "axios";
import { useState } from "react";
import { useQuery } from "react-query";
import Card from "../components/elements/Card";
import HomeSearchBar from "../components/elements/HomeSearchBar";
import StaticLayout from "../components/Layouts/StaticLayout";
import Lenders from "../components/Search/Lenders";
import { fetcher, getLenders, getUser } from "../lib/api";
import { getTokenFromLocalCookie, getTokenFromServerCookie } from "../lib/auth";
import { useFetchUser, useUser } from "../lib/AuthContext";

export default function Home({ lenders, user }) {
  console.log(user)
  const jwt = getTokenFromLocalCookie();
  const { data, isLoading, isSuccess, error } = useQuery(['user'], () => getUser(jwt), {
    staleTime: 1000 * 60 * 60 * 24,
    enabled: Boolean(jwt)
  })
  const { user: userclient, loading } = useFetchUser()

  return (
    <StaticLayout user={data} loading={isLoading}>
      <div className="flex flex-col items-center w-full p-1 text-black">
        <HomeSearchBar />
        <Lenders lenders={lenders} />
      </div>
    </StaticLayout>

  )
}

export async function getStaticProps(context) {
  const lenders = await getLenders({
    limit: 6,
  })
  return {
    props: {
      lenders,
    },
    revalidate: 10,
  };
}



