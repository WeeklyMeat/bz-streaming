import {api} from "./config/axiosConfig"
import Cookies from "js-cookie";

export const authAPI = {
    registerUser: async function (username, email, password) {
        const response = await api.request({
            url: `/auth/register`,
            method: "POST",
            data: {
                username,
                email,
                password
            }
        });
        return response;
    },

    loginUser: async function (username, password) {
        const response = await api.request({
            url: `/auth/login`,
            method: "POST",
            data: {
                username,
                password
            }
        });
        return response;
    },
}