<script>
    import { Router, Route } from "svelte-routing";
    import Home from "./routes/Home.svelte";
    import Anime from "./routes/Anime.svelte";
    import Season from "./routes/Season.svelte";
    import Watchlist from "./routes/Watchlist.svelte";
    import Navbar from "./lib/Navbar.svelte";
    import { onMount } from 'svelte';
    import LandingPage from "./routes/LandingPage.svelte";
    import Cookies from "js-cookie";
    import NotFound from "./routes/NotFound.svelte";
    import About from "./routes/About.svelte";
    import Watch from "./routes/Watch.svelte";
    import Profile from "./routes/Profile.svelte";

    export let url = "";
    let isLoggedIn = Cookies.get("accessToken") != null;

    onMount(() => {
        if (window.matchMedia('(prefers-color-scheme: dark)').matches) {
            document.documentElement.setAttribute('data-theme', 'dark');
        } else {
            document.documentElement.setAttribute('data-theme', 'light');
        }
    });
</script>

<div id="content-wrapper">
    <Router {url}>
        {#if isLoggedIn}
            <Navbar></Navbar>
            <Route path="/" component={Home}></Route>
            <Route path="/watchlist" component={Watchlist}></Route>
            <Route path="/anime/:animeId" component={Anime}></Route>
            <Route path="/season/:seasonId" component={Season}></Route>
            <Route path="/watch/:episodeId" component={Watch}></Route>
            <Route path="/profile" component={Profile}></Route>
            <Route path="*" component={NotFound}></Route>
        {:else}
            <Route path="*" component={LandingPage}></Route>
        {/if}
        <Route path="/about" component={About}></Route>
    </Router>
</div>

<style lang="scss">
    @import "_variables.scss";

    #content-wrapper {
        width: 100%;
        display: flex;
        align-items: center;
        flex-direction: column;
    }
</style>
