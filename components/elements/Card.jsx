import React, { useState } from "react";
import VerifiedIcon from "@mui/icons-material/Verified";
import LocationOnIcon from "@mui/icons-material/LocationOn";
import HoverRating from "./Rating";
import ButtonCard from "./ButtonCard";
import Link from 'next/link'
import BackgroundLetterAvatars from "./AvatarInitials";
import Image from "next/image";
import { useRouter } from "next/router";
import { useQuery } from "react-query";
import axios from "axios";
import HireLender from "./HireLender";
import { useUser } from "../../lib/AuthContext";
import SendMessageButton from "../chatapp/SendMessageButton";
import Avatar from "./Avatar";

const Card = ({ lender, authUser }) => {
  // console.log("authUser", authUser)
  function getWordStr(str) {
    return str.split(/\s+/).slice(0, 1);
  }
  return (
    <div className="inline-block mt-3 text-gray-900  w-72 bg-gray-200 rounded-lg border border-gray-200 shadow-md ">

      <div className="flex flex-col justify-between h-full mx-1 pb-2 mt-3">
        <div className="flex flex-col h-24 justify-between  mx-2">
          <div className="flex flex-row justify-between">
            <div className="flex flex-row">
              <Avatar user={lender} width={64} desktopWidth={64} fontSize="large" />

              <div className="flex flex-col ml-1">
                <Link href={{
                  pathname: '/[userSlug]',
                  query: { userSlug: lender?.Slug, },
                }} >
                  <a>
                    <div className="flex flex-row justify-start text-sm">
                      <span className="">
                        {getWordStr(lender?.firstName) + " " + getWordStr(lender?.lastName)}
                      </span>
                      <VerifiedIcon fontSize="small" className="p-0.5" />
                    </div>
                  </a>
                </Link>

                <div className="flex justify-start items-start pt-2">
                  <LocationOnIcon fontSize="small" /> <div className="text-sm">{(lender?.provincia ? lender.provincia.name + ', ' : 'Provincia , ') + (lender?.localidad ? lender.localidad.name : 'Ciudad')}</div>
                </div>
              </div>
            </div>
            <div className="flex pb-2 text-orange-brand ">
              $1500
            </div>
          </div>
          <HoverRating
            counts={lender?.countsReview ? lender?.countsReview : 0}
            value={lender?.averageScore}
            readOnly={true} />
        </div>

        <div className="flex flex-col justify-between my-2 ">

          <span className=" border-0 pt-2 border-t mx-2  border-gray-500 border-opacity-30 truncate   mb-1 px-1 text-base font-medium text-gray-900 dark">
            {lender?.aboutme ? lender?.aboutme : 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Assumend    laboriosam, quod aut officiis ea deleniti repellat nisi delectus magnam reiciendis?'}
          </span>
          <div>
            {
              lender?.categories?.map((categorie) => (
                <ButtonCard key={categorie.id + lender.id} href={'/buscar/' + categorie?.Slug} text={categorie.name} />
              ))
            }

          </div>
        </div>
        <div className="flex flex-wrap mx-2 border-0 py-2 border-t  border-gray-500 border-opacity-30 items-end justify-end space-x-3 ">
          {/* {authUser ?
            authUser.id === lender.id ?
              <></>
              :
              <HireLender authUser={authUser} lender={lender} />
            :
            <></>} */}

          <SendMessageButton lender={lender} />
        </div>
      </div>
    </div>
  );
};

export default Card;
