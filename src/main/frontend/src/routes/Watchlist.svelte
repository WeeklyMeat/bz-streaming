<script>
    import ContentOverview from "../lib/ContentOverview.svelte";
    import {watchlistAPI} from "../api/watchlistAPI.js";

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
    watchlistAPI.get().then((data) => {
        anime = data;
        hasLoaded = true;
    });
</script>

<main id="main-page">
    {#if hasLoaded}
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