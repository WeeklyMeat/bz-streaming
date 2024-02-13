<script>
    // Default theme
    import '@splidejs/splide/css';
    import '@splidejs/splide/css/skyblue';
    import '@splidejs/splide/css/core';

    import { onMount } from 'svelte';
    import { link } from "svelte-routing";
    import Splide from "@splidejs/splide";

    export let anime;

    let splide = {};
    onMount(() => {
        splide = new Splide( '#featured', {
            pagination: false,
            autoplay: true,
            type: 'loop',
            classes: {
                arrow: 'splide__arrow slide-arrow'
            }
        } );
        splide.mount();
    })
</script>

<section id="featured" class="splide" aria-label="My Awesome Gallery">
    <div class="splide__track slide">
        <ul class="splide__list slide-list">
            {#each anime as a}
                <li class="splide__slide slide-frame">
                    <a href="/anime/{a.id}" use:link>
                        <img src="{a.imageUrl}" alt="" class="slide-image">
                    </a>
                </li>
            {/each}
        </ul>
    </div>
</section>

<style lang="scss">
    @import "../_variables.scss";

    #featured {
        margin-top: $s-std-margin;
        width: 100%;
        aspect-ratio: 21 / 9;
        position: relative;
        border-radius: $s-border-radius;
        overflow: hidden;

        .slide {
            height: 100%;

            &-frame {
                width: 100%;
                height: 100%;
            }

            &-image {
                height: 100%;
                width: 100%;
                object-fit: cover;
            }
        }
    }
</style>