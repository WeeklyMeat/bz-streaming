import { api } from "./config/axiosConfig"
import {dummyData} from "./config/dummyData.js";

export const userAPI = {

    get: async function () {
        const response = await api.request({
            url: `/api/user`,
            method: "GET",
        });
        return response.data;
    },

    updatePassword: async function (currentPassword, newPassword) {
        const response = await api.request({
            url: `/api/user`,
            method: "PATCH",
            data: {
                currentPassword: currentPassword,
                newPassword: newPassword
            }
        });
        return response;
    }
}