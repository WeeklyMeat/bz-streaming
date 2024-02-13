<script>
    import ContentPanel from "./ContentPanel.svelte";
    import {watchlistAPI} from "../api/watchlistAPI.js";

    export let content = [
        {
            id: "",
            title: "",
            number: "",
            description: "",
            imageUrl: "",
            link: "",
        }
    ];
    export let withSearch = false;
    export let hasAddWatchlist = false;
    let querry = "";
    let filtered = content.filter(() => {
        return true;
    });

    let watchlistAnimeIds = [];
    let hasLoaded = false;
    watchlistAPI.get().then((data) => {
        data.forEach((a) => {
            watchlistAnimeIds.push(a.id);
        });
        hasLoaded = true;
    });

    function filter() {
        filtered = content.filter((c) => c.title.toLowerCase().includes(querry.toLocaleLowerCase()));
    }
</script>

<section class="content">
    {#if withSearch}
        <input bind:value={querry} on:input={filter} type="text" placeholder="Search" class="content-overview-search">
    {/if}
    {#if hasLoaded}
        <div class="content-overview-list">
            {#each filtered as a}
                <ContentPanel content={a} hasAddWatchlist={hasAddWatchlist} isInWatchlist={watchlistAnimeIds.includes(a.id)}></ContentPanel>
            {/each}
        </div>
    {/if}
</section>

<style lang="scss">
    @import "../_variables.scss";

    .content {

        width: 100%;
        &-overview {
            &-search {
                height: calc(100% - 2rem);
                width: calc(100% - (2 * $s-panel-margin));
                margin-top: $s-panel-margin;
                border: none;
                font: inherit;
                padding: $s-panel-margin;
                background-color: $c-shade-secondary;
                overflow: hidden;
                border-radius: $s-border-radius;
            }
            &-list {
                width: 100%;
                display: flex;
                flex-wrap: wrap;
                justify-content: space-between;
            }
        }
    }
</style>