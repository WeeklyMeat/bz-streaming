<script>
    import ContentDescription from "../lib/ContentDescription.svelte";
    import ContentOverview from "../lib/ContentOverview.svelte";
    import {seasonAPI} from "../api/seasonAPI.js";
    import {animeAPI} from "../api/animeAPI.js";

    export let seasonId;
    let hasLoaded = false;
    let season = {
        id: "",
        title: "",
        number: "",
        description: "",
        imageUrl: "",
        link: "",
        episodes: [{
            id: "",
            title: "",
            number: "",
            link: "",
            videoUrl: ""
        }]
    };
    seasonAPI.get(seasonId).then((data) => {
        season = data;
        season.episodes.sort((a, b) => {
            return Number(a.number) - Number(b.number);
        })
        hasLoaded = true;
    });
</script>

<main id="main-page">
    <ContentDescription content={season}></ContentDescription>
    {#if hasLoaded}
        <div id="episodes">
            {#each season.episodes as episode}
                <a href={episode.link} class="episode">
                    <div class="episode-number">{episode.number}</div>
                    <div class="episode-title">{episode.title}</div>
                </a>
            {/each}
        </div>
    {/if}

</main>

<style lang="scss">
    @import "../_variables.scss";

    #main-page {
        width: min($s-std-width, calc(100% - (2 * $s-std-margin)));
        color: $c-dark-main;
        padding: 0 $s-std-margin;
    }

    #episodes {
        margin-top: $s-std-margin;
    }

    .episode {
        display: flex;
        width: calc(100% - (2 * $s-episode-p-horizontal));
        height: $s-episode-height;
        padding: $s-episode-p-vertical $s-episode-p-horizontal;
        border-radius: $s-border-radius;
        overflow: hidden;
        margin-bottom: $s-episode-m;
        background-color: $c-shade-secondary;
        font-size: 1.5rem;
        transition: 0.15s;
        text-decoration: none;
        color: $c-dark-main;

        &:hover {
            background-color: $c-main;
            color: $c-shade-main;

        }

        &:last-of-type {
            margin-bottom: 0;
        }

        &-number {
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100%;
            width: $s-episode-number-width;
            padding-right: $s-episode-p-horizontal;
            border-right: 2px solid $c-shade-tertiary;
        }

        &-title {
            display: flex;
            align-items: center;
            height: 100%;
            width: calc(100% - $s-episode-number-width - (2 * $s-episode-p-horizontal) - $s-episode-number-width);
            padding-left: $s-episode-p-horizontal;
        }
    }
</style>