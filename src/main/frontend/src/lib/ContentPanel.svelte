<script>
    import { link } from "svelte-routing";
    import {watchlistAPI} from "../api/watchlistAPI.js";

    export let hasAddWatchlist = false;
    export let isInWatchlist = false;
    export let content = {
        id: "",
        title: "",
        number: "",
        description: "",
        imageUrl: "",
        link: "",
    };

    function addToWatchlist() {
        watchlistAPI.add(content.id);
        isInWatchlist = !isInWatchlist;
    }

    function removeFromWatchlist() {
        watchlistAPI.remove(content.id);
        isInWatchlist = !isInWatchlist;
    }

</script>

<div class="content-panel">
    <div class="content-panel-front" >
        <a href="{content.link}" class="content-panel-front-image" use:link>
            <img alt="" src="{content.imageUrl}"/>
        </a>
        <div class="content-panel-front-bottom">
            <a href="{content.link}" class="content-panel-front-bottom-title" use:link>{content.title}</a>
            {#if hasAddWatchlist}
                {#if isInWatchlist}
                    <a class="content-panel-front-bottom-watchlist" on:click={removeFromWatchlist}>
                        <svg class="content-panel-front-bottom-watchlist-icon icon-remove" height="800" width="800" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
                             viewBox="0 0 460.775 460.775" xml:space="preserve">
                            <path d="M285.08,230.397L456.218,59.27c6.076-6.077,6.076-15.911,0-21.986L423.511,4.565c-2.913-2.911-6.866-4.55-10.992-4.55
                                c-4.127,0-8.08,1.639-10.993,4.55l-171.138,171.14L59.25,4.565c-2.913-2.911-6.866-4.55-10.993-4.55
                                c-4.126,0-8.08,1.639-10.992,4.55L4.558,37.284c-6.077,6.075-6.077,15.909,0,21.986l171.138,171.128L4.575,401.505
                                c-6.074,6.077-6.074,15.911,0,21.986l32.709,32.719c2.911,2.911,6.865,4.55,10.992,4.55c4.127,0,8.08-1.639,10.994-4.55
                                l171.117-171.12l171.118,171.12c2.913,2.911,6.866,4.55,10.993,4.55c4.128,0,8.081-1.639,10.992-4.55l32.709-32.719
                                c6.074-6.075,6.074-15.909,0-21.986L285.08,230.397z"/>
                        </svg>
                    </a>
                {:else}
                    <a class="content-panel-front-bottom-watchlist" on:click={addToWatchlist}>
                        <svg class="content-panel-front-bottom-watchlist-icon" xmlns="http://www.w3.org/2000/svg" height="240" viewBox="0 0 24 24" width="240" focusable="false" style="pointer-events: none; display: block; width: 100%; height: 100%;">
                            <path d="M22 13h-4v4h-2v-4h-4v-2h4V7h2v4h4v2zm-8-6H2v1h12V7zM2 12h8v-1H2v1zm0 4h8v-1H2v1z">
                            </path>
                        </svg>
                    </a>
                {/if}
            {/if}
        </div>
    </div>
</div>

<style lang="scss">
    @import "../_variables.scss";

    .content-panel {
        margin-top: $s-panel-margin;
        width: calc(50% - ($s-panel-margin / 2));
        aspect-ratio: 16 / 9;
        background-color: $c-main;
        border-radius: $s-border-radius;
        position: relative;

        &-front {
            background-color: $c-shade-secondary;
            width: 100%;
            height: 100%;
            border-radius: $s-border-radius;
            position: absolute;
            overflow: hidden;
            top: 0;
            left: 0;
            transition: 0.15s;

            display: flex;
            flex-direction: column;

            &:hover {
                top: 0 - $s-panel-hover-offset;
                left: $s-panel-hover-offset;
            }

            &-image {
                width: 100%;
                height: calc(100% - $s-panel-title-height - (2 * $s-panel-text-p-vertical));
                overflow: hidden;

                img {
                    width: 100%;
                    height: 100%;
                    object-fit: cover;
                    object-position: center;
                }
            }

            &-bottom {

                display: flex;
                width: calc(100% - (2 * $s-panel-text-p-horizontal));
                height: $s-panel-title-height;
                padding: $s-panel-text-p-vertical $s-panel-text-p-horizontal;

                &-title {
                    height: 100%;
                    width: calc(100% - $s-panel-title-height);
                    display: flex;
                    align-items: center;
                    line-height: $s-panel-title-height;
                    font-size: $s-panel-text-height;
                    color: $c-dark-main;
                    text-decoration: none;
                }

                &-watchlist {
                    width: $s-panel-title-height;
                    height: $s-panel-title-height;
                    transition: 0.15s;

                    &:hover {
                        cursor: pointer;
                    }

                    &:hover &-icon {
                        fill: $c-main;
                    }

                    &-icon {
                        width: 100%;
                        height: 100%;
                        object-fit: contain;
                        transition: 0.15s;
                        fill: $c-dark-main;
                    }
                }
            }
        }
    }

    .icon-remove {
        padding: 0.25rem;
        width: calc(100% - 0.5rem);
        height: calc(100% - 0.5rem);
        &:hover {
            fill: $c-error-main !important;
        }
    }

    @media screen and (max-width: $s-std-width-break) {
        .content-panel {
            width: 100%;
        }
    }
</style>