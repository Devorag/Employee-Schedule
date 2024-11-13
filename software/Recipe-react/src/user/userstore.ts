import { create } from "zustand"

interface User {
    username: string,
    role: string,
    isLoggedIn: boolean,
    login: (username: string, password: string) => Promise<void>,
    logout: () => void
}
const keyname = "userstore";
export const useUserStore = create<User>(
    (set) => {
        const storedvalue = sessionStorage.getItem(keyname);
        const initalvals = storedvalue ?
            JSON.parse(storedvalue)
            : { username: "", role: "", isLoggedIn: false }
        return {
            ...initalvals,

            login: async (username: string, password: string) => {
                const roleval = username.toLowerCase().startsWith("a") && password != "" ? "admin" : "user";
                const newState = { username, role: roleval, isLoggedIn: true };

                sessionStorage.setItem(keyname, JSON.stringify(newState));
                set(newState);
            },

            logout: () => {
                const newState = { username: "", role: "", isLoggedIn: false };

                sessionStorage.setItem(keyname, JSON.stringify(newState));
                set(newState);
            }
        };
    });