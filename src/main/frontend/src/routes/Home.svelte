<script>
    import ContentOverview from "../lib/ContentOverview.svelte";
    import AnimeFeatured from "../lib/AnimeFeatured.svelte";
    import { animeAPI } from "../api/animeAPI.js";

    let hasLoaded = false;
    let anime = [
        {
            id: "",
            title: "",
            number: "",
            description: "",
            imageUrl: "",
            link: "",
        }
    ];
    let animeFeatured = [];
    animeAPI.getAll().then((data) => {
        anime = data;
        for(let i = 0; i < 3 && i in anime; i++) { // wouldn't be needed if .getFeatured worked
            animeFeatured = [...animeFeatured, anime[i]];
        }
        hasLoaded = true;
    });
</script>

<main id="main-page">
    {#if hasLoaded}
        <AnimeFeatured anime={animeFeatured}></AnimeFeatured>
        <ContentOverview content={anime} withSearch={true} hasAddWatchlist={true}></ContentOverview>
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