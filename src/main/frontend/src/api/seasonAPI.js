import { api } from "./config/axiosConfig"
import {dummyData} from "./config/dummyData.js";

export const seasonAPI = {

    get: async function (seasonId) {
        const response = await api.request({
            url: `/api/season/${seasonId}`,
            method: "GET",
        });
        return response.data;
    },
}