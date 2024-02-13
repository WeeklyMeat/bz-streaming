<script>
    import {episodeAPI} from "../api/episodeAPI.js";

    export let episodeId;
    let hasLoaded = false;
    let episode = {
        id: "",
        title: "",
        number: "",
        link: "",
        videoUrl: ""
    }
    episodeAPI.get(episodeId).then((data) => {
        episode = data;
        hasLoaded = true;
    });
</script>

<main id="main-page">
    {#if hasLoaded}
        <div id="viewer">
            <video id="viewer-video" controls>
                <source src={episode.videoUrl} type="video/mp4">
                Your browser does not support the video tag.
            </video>
        </div>
        <div class="episode">
            <div class="episode-number">{episode.number}</div>
            <div class="episode-title">{episode.title}</div>
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

    #viewer {

        display: flex;
        width: 100%;
        margin-top: $s-std-margin;
        border-radius: $s-border-radius;
        overflow: hidden;

        &-video {
            width: 100%;
        }
    }

    .episode {
        margin-top: $s-std-margin;
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