import Link from 'next/link'
import { useRouter } from 'next/router'
import React from 'react'
import Avatar from '../elements/Avatar'
import CircleRoundedIcon from '@mui/icons-material/CircleRounded';
import { concatUserName } from '../../lib/utils';

const Conversation = ({ user, conversationid, lastmessage }) => {
    const router = useRouter()
    const { conversationId } = router.query
    console.log(lastmessage)
    return (
        <Link href={'/mensajes/' + conversationid}>
            <div className={`flex flex-row cursor-pointer ${conversationId == conversationid ? 'bg-gray-200 dark:bg-gray-700' : ''} items-center h-auto p-2 px-4 gap-3 hover:bg-gray-200 dark:hover:bg-gray-700 `}>
                {user &&
                    <>

                        <Avatar user={user} width={32} desktopWidth={64} fontSize={'large'} />

                        <div className="div flex flex-col">
                            <span className="conversationName font-bold text-xl">{concatUserName(user)}</span>
                            <span className="conversationName font-normal text-md">{lastmessage?.text}</span>
                        </div>
                        {
                            !lastmessage?.read &&
                            <CircleRoundedIcon />
                        }
                    </>
                }

            </div>
        </Link>
    )
}

export default Conversation