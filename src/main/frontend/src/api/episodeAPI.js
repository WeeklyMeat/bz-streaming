import { api } from "./config/axiosConfig"
import {dummyData} from "./config/dummyData.js";

export const episodeAPI = {

    get: async function (episodeId) {
        const response = await api.request({
            url: `/api/episodes/${episodeId}`,
            method: "GET",
        });
        return response.data;
    }
}