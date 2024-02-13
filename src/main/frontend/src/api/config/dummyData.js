export const dummyData = {

    getAnime: () => {
        return [
            {
                id: "id_kimi",
                name: "Kimi no na wa",
                description: "Kimi no na wa is an anime",
                image: "http://localhost:8080/images/placeholder.png",
                link: "/anime/id_kimi",
                episodeCount: "1"
            },
            {
                id: "id_re",
                name: "Re: Zero",
                description: "Re Zero is an anime",
                image: "http://localhost:8080/images/placeholder.png",
                link: "/anime/id_re",
                episodeCount: "36"
            },
            {
                id: "id_ngnl",
                name: "No Game No Life",
                image: "http://localhost:8080/images/placeholder.png",
                description: "No Game No Life is an anime",
                link: "/anime/id_ngnl",
                episodeCount: "12"
            },
            {
                id: "id_suzu",
                name: "Suzume",
                description: "Suzume is an anime",
                image: "http://localhost:8080/images/placeholder.png",
                link: "/anime/id_suzu",
                episodeCount: "1"
            }
        ];
    },

    getSeasons: () => {
        return [
            {
                id: "id_s1",
                name: "Season 1",
                description: "What a great first season",
                image: "http://localhost:8080/images/placeholder.png",
                link: "/season/id_s1",
                episodeCount: "12"
            },
            {
                id: "id_s2",
                name: "Season 2",
                description: "Stellar second season",
                image: "http://localhost:8080/images/placeholder.png",
                link: "/season/id_s2",
                episodeCount: "13"
            }
        ];
    },

    getEpisodes: () => {
        return [
            {
                id: "id_e1",
                name: "Episode 2: The Beginning",
                number: 1,
                link: "/watch/id_e1"
            },
            {
                id: "id_e2",
                name: "Episode 2: Still the Beginning",
                number: 2,
                link: "/watch/id_e2"
            }
        ];
    },

    getUser() {
        return {
            id: "id_u1",
            username: "foobar",
            email: "foo@bar.com",
            avatar: "http://localhost:8080/images/placeholder.png"
        };
    }
}