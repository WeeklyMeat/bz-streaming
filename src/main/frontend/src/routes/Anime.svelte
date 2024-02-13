<script>
    import ContentDescription from "../lib/ContentDescription.svelte";
    import ContentOverview from "../lib/ContentOverview.svelte";
    import { animeAPI } from "../api/animeAPI.js";

    export let animeId;
    let hasLoaded = false;
    let anime = {
        id: "",
        title: "",
        number: "",
        description: "",
        imageUrl: "",
        link: "",
        seasons: [
            {
                id: "",
                title: "",
                number: "",
                description: "",
                imageUrl: "",
                link: "",
            }
        ]
    };
    animeAPI.get(animeId).then((data) => {
        anime = data;
        hasLoaded = true;
    });


</script>

<main id="main-page">
    {#if hasLoaded}
        <ContentDescription content={anime}></ContentDescription>
        <ContentOverview content={anime.seasons}></ContentOverview>
    {/if}
</main>

<style lang="scss">
    @import "../_variables.scss";

    #main-page {
        width: min($s-std-width, calc(100% - (2 * $s-std-margin)));
        color: $c-dark-main;
        padding: 0 $s-std-margin;
    }
</style>