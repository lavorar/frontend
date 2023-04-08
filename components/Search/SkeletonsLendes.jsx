import React from 'react'

export default function SkeletonsLendes() {
    return (
        <div role="status" className="w-72 p-2 flex flex-col justify-between mt-3 border border-gray-300 rounded shadow animate-pulse md:p-2.5 dark:border-gray-700">
            <div>
                <div className="flex items-center  space-x-3">
                    <svg className="text-gray-300 w-[4.25rem] h-[4.25rem] dark:text-gray-700" aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fillRule="evenodd" d="M18 10a8 8 0 11-16 0 8 8 0 0116 0zm-6-3a2 2 0 11-4 0 2 2 0 014 0zm-2 4a5 5 0 00-4.546 2.916A5.986 5.986 0 0010 16a5.986 5.986 0 004.546-2.084A5 5 0 0010 11z" clipRule="evenodd"></path></svg>
                    <div>
                        <div className="h-2.5 bg-gray-300 rounded-full dark:bg-gray-700 w-32 mb-4"></div>
                        <div className="w-40 h-2 bg-gray-300 rounded-full dark:bg-gray-700 mb-2"></div>
                        <div className="w-28 h-2 bg-gray-300 rounded-full dark:bg-gray-700"></div>
                    </div>
                </div>
                <div className="h-2.5 bg-gray-300 rounded-full dark:bg-gray-700 w-48 mt-6 mb-7" ></div>
                <div className="h-2 bg-gray-300 rounded-full dark:bg-gray-700  mb-3"></div>
                <div className="h-2 bg-gray-300 rounded-full dark:bg-gray-700 mb-6"></div>
                <div className='flex flex-row gap-2 my-2'>
                    <div className="h-4 w-20 bg-gray-300 rounded-full dark:bg-gray-700 "></div>
                    <div className="h-4 w-20 bg-gray-300 rounded-full dark:bg-gray-700 "></div>
                    <div className="h-4 w-20 bg-gray-300 rounded-full dark:bg-gray-700 "></div>
                </div>
            </div>
            <div className="self-end place-self-end h-6 w-24 my-1 mr-2 bg-gray-300 rounded-lg dark:bg-gray-700 "></div>
            <span className="sr-only">Loading...</span>
        </div>
    )
}

