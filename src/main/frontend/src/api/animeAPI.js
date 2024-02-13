import {api} from "./config/axiosConfig"
import Cookies from "js-cookie";

export const animeAPI = {
    getAll: async function () {
        const response = await api.request({
            url: `/api/anime/all`,
            method: "GET",
        });
        return response.data;
    },

    // DUMMY
    getFeatured: async function () {
        const response = await api.request({
            /*url: `/api/anime/featured`,*/
            url: `/api/anime/all`,
            method: "GET",
        });
        return response.data;
    },

    get: async function (animeId) {
        const response = await api.request({
            url: `/api/anime/${animeId}`,
            method: "GET",
        });
        return response.data;
    }
}