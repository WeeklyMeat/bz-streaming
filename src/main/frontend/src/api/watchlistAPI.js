import { api } from "./config/axiosConfig"
import {dummyData} from "./config/dummyData.js";

export const watchlistAPI = {

    get: async function () {
        const response = await api.request({
            url: `/api/watchlist`,
            method: "GET",
        });
        return response.data;
    },

    add: async function (animeId) {
        const response = await api.request({
            url: `/api/watchlist/${animeId}`,
            method: "POST",
        });
        return response.data;
    },

    remove: async function (animeId) {
        const response = await api.request({
            url: `/api/watchlist/${animeId}`,
            method: "DELETE",
        });
        return response.data;
    }
}