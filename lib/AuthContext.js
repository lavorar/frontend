import { createContext, useContext, useEffect, useRef, useState } from 'react';
import { getUserFromLocalCookie } from '../lib/auth';
import { getTokenFromLocalCookie } from './auth'

let userState;
const { io } = require("socket.io-client");
const SERVER_URL = process.env.NEXT_PUBLIC_STRAPI_SOCKET;
const jwt = getTokenFromLocalCookie()
const User = createContext({ user: null, loading: false });

export const UserProvider = ({ value, children }) => {
    const { loading } = value;
    const { user: userValue } = value;
    const setUserState = (user) => {
        userValue = user;
    }
    const [socketState, setSocketState] = useState(null);
    useEffect(() => {
        if (!userState && userValue) {
            userState = userValue;
        }
    }, []);

    useEffect(() => {
        if (!loading && userValue && !socketState) {
            const socket = io(SERVER_URL, {
                transports: ["websocket"],
                auth: {
                    token: jwt,
                    userId: userValue.id
                }
            });
            socket.connect();
            setSocketState(socket)
        }
    }, [userValue, loading]);

    return <User.Provider value={{ user: userValue, loading, setUserState, socket: socketState }}>{children}</User.Provider>;
};

export const useUser = () => useContext(User);

export const useFetchUser = () => {
    const [data, setUser] = useState({
        user: userState || null,
        loading: userState === undefined,
    });

    useEffect(() => {
        if (userState !== undefined) {
            return;
        }
        let isMounted = true;
        const resolveUser = async () => {
            const user = await getUserFromLocalCookie();
            if (isMounted) {
                setUser({ user, loading: false });
            }
        };
        resolveUser();
        return () => {
            isMounted = false;
        };
    }, []);

    return data;
};