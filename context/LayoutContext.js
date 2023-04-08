import { createContext, useContext, useEffect, useRef, useState, } from "react";
import { getTokenFromLocalCookie } from "../lib/auth";
import { usePageLoading } from "../lib/pageLoader";
import { useUser } from '../lib/AuthContext'

export const Layout = createContext();
const { io } = require("socket.io-client");
const SERVER_URL = "ws://localhost:1337";
const jwt = getTokenFromLocalCookie()




export default function FormProvider({ children }) {
    const { isPageLoading } = usePageLoading();
    const socket = useRef(null);
    useEffect(() => {
        if (jwt) {
            socket.current = io(SERVER_URL, {

                transports: ["websocket"],
                auth: {
                    token: jwt,
                }
            });
        }
    }, []);
    return (
        <Layout.Provider value={{ socket, isPageLoading }}>
            {children}
        </Layout.Provider>
    );
}

export const UseLayoutSocket = () => useContext(Layout);
