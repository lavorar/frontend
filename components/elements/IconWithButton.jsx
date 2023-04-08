import React from 'react'
const IconWithButton = (props) => {
    return (
        <>
            <button
                onClick={props.onClick}
                className={` inline-flex w-full justify-center rounded-full bg-transparent dark:bg-transparent dark:group-hover:bg-gray-700  px-2 py-2 text-sm font-medium text-gray-800 dark:text-white-ghost group-hover:bg-gray-300  focus:outline-1 focus-visible:ring-2 focus-visible:ring-white focus-visible:ring-opacity-75`}>

                {props.children}

            </button>
        </>
    )
}
export default IconWithButton