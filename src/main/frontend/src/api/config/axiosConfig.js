import axios from "axios"
import Cookies from "js-cookie";

export const BASE_URL = "http://localhost:8080";

export const api = axios.create(
    {
        baseURL: BASE_URL,
        headers: {
            Authorization: Cookies.get('accessToken')
        }
    }
);

const errorHandler = (error) => {
    const statusCode = error.response?.status ?? error.response?.request?.status;

    if (statusCode && statusCode !== 401) {
        return Promise.reject(error)
    }

    return error.response;
}
api.interceptors.response.use(undefined, (error) => {
    return errorHandler(error)
})