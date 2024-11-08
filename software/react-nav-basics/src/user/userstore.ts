import { create } from "zustand"

interface User {
    username: string,
    role: string,
    isLoggedIn: boolean,
    login: (username: string, password: string) => Promise<void>,
    logout: () => void
}

export const useUserStore = create<User>(
    (set) => ({
        username: "",
        role: "",
        isLoggedIn: false,
        logout: () => ({ username: "", role: "", isLoggedIn: false }),
        login: async (username: string, password: string) => {
            set({ username: username, role: "user", isLoggedIn: true })
        }
    })
);