<script>
    import { link } from "svelte-routing";
    import Cookies from "js-cookie";

    let showUserOptions = false;
    let isDarkmode = (document.documentElement.getAttribute("data-theme") === "dark");

    function switchShowUser() {
        showUserOptions = !showUserOptions;
    }

    function switchColorMode() {
        isDarkmode = !isDarkmode;
        if(isDarkmode) {
            document.documentElement.setAttribute("data-theme", "dark");
        }
        else {
            document.documentElement.setAttribute("data-theme", "light");
        }
    }

    function logout() {
        switchShowUser();
        Cookies.remove("accessToken");
        window.location.href = "/";
    }
</script>

<nav id="navbar">
    <a href="/" id="navbar-logo" use:link> </a>
    <button id="navbar-icon" use:link on:click={switchShowUser}></button>
</nav>
{#if showUserOptions}
    <div id="user-option-wrapper">
        <a href="/profile" class="user-option" use:link on:click={switchShowUser}>
            <div class="user-option-icon">
                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" focusable="false" style="pointer-events: none; display: block; width: 100%; height: 100%;">
                    <path d="M3,3v18h18V3H3z M4.99,20c0.39-2.62,2.38-5.1,7.01-5.1s6.62,2.48,7.01,5.1H4.99z M9,10c0-1.65,1.35-3,3-3s3,1.35,3,3 c0,1.65-1.35,3-3,3S9,11.65,9,10z M12.72,13.93C14.58,13.59,16,11.96,16,10c0-2.21-1.79-4-4-4c-2.21,0-4,1.79-4,4 c0,1.96,1.42,3.59,3.28,3.93c-4.42,0.25-6.84,2.8-7.28,6V4h16v15.93C19.56,16.73,17.14,14.18,12.72,13.93z"></path>
                </svg>
            </div>
            <div class="user-option-text">Profile</div>
        </a>
        <a href="/watchlist" class="user-option" use:link on:click={switchShowUser}>
            <div class="user-option-icon">
                <svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24" focusable="false" style="pointer-events: none; display: block; width: 100%; height: 100%;"><path d="M22 7H2v1h20V7zm-9 5H2v-1h11v1zm0 4H2v-1h11v1zm2 3v-8l7 4-7 4z"></path></svg>
            </div>
            <div class="user-option-text">Watchlist</div>
        </a>
        <a class="user-option" on:click={switchColorMode}>
            <div class="user-option-icon">
                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" focusable="false" style="pointer-events: none; display: block; width: 100%; height: 100%;">
                    <path d="M12 22C10.93 22 9.86998 21.83 8.83998 21.48L7.41998 21.01L8.83998 20.54C12.53 19.31 15 15.88 15 12C15 8.12 12.53 4.69 8.83998 3.47L7.41998 2.99L8.83998 2.52C9.86998 2.17 10.93 2 12 2C17.51 2 22 6.49 22 12C22 17.51 17.51 22 12 22ZM10.58 20.89C11.05 20.96 11.53 21 12 21C16.96 21 21 16.96 21 12C21 7.04 16.96 3 12 3C11.53 3 11.05 3.04 10.58 3.11C13.88 4.81 16 8.21 16 12C16 15.79 13.88 19.19 10.58 20.89Z"></path>
                </svg>
            </div>
            {#if isDarkmode}
                <div class="user-option-text">Lightmode</div>
            {:else}
                <div class="user-option-text">Darkmode</div>
            {/if}
        </a>
        <a class="user-option" on:click={logout}>
            <div class="user-option-icon">
                <svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24" focusable="false" style="pointer-events: none; display: block; width: 100%; height: 100%;"><path d="M20 3v18H8v-1h11V4H8V3h12zm-8.9 12.1.7.7 4.4-4.4L11.8 7l-.7.7 3.1 3.1H3v1h11.3l-3.2 3.3z"></path></svg>
            </div>
            <div class="user-option-text">Logout</div>
        </a>
    </div>
{/if}

<style lang="scss">
    @import "../_variables.scss";

    #navbar {
        position: sticky;
        height: $s-nav-height;
        top: 0;
        left: 0;
        z-index: 10;
        background-color: $c-shade-main;
        width: calc(100% - (2 * $s-nav-p-horizontal));
        border-bottom: $s-nav-border solid $c-shade-secondary;
        display: flex;
        justify-content: space-between;
        padding: $s-nav-p-vertical $s-nav-p-horizontal;

        &-logo {
            aspect-ratio: 1 / 1;
            height: 100%;

            background-color: $c-main;
            overflow: hidden;
            border-radius: $s-border-radius;
        }

        &-icon {

            aspect-ratio: 1 / 1;
            height: 100%;
            border: none;
            background-color: $c-main;
            overflow: hidden;
            border-radius: $s-infinite;

            &:hover {
                cursor: pointer;
            }
        }
    }
    #user-option-wrapper {
        position: fixed;
        right: $s-nav-p-horizontal;
        top: calc($s-nav-height + (3 * $s-nav-p-vertical));
        width: $s-nav-menu-width;
        z-index: 5;
        background-color: $c-shade-secondary;
        border-radius: $s-border-radius;
        overflow: hidden;
    }
    .user-option {

        display: flex;
        justify-content: space-between;
        width: calc(100% - (2 * $s-nav-menu-option-p));
        height: $s-nav-menu-option-height;
        padding: $s-nav-menu-option-p;
        border-top: $s-nav-border solid $c-shade-tertiary;
        cursor: pointer;
        text-decoration: none;
        color: $c-dark-main;
        transition: 0.15s;

        &:hover {
            background-color: $c-main;
            color: $c-shade-main;
        }

        &:hover svg {
            fill: $c-shade-main;
        }

        &:first-of-type {
            border: none;
        }

        &-icon {
            width: $s-nav-menu-option-icon;
            aspect-ratio: 1 / 1;
        }
        &-text {
            display: flex;
            align-items: center;
            width: calc(100% - (2 * $s-nav-menu-option-text));
            font-size: $s-nav-menu-option-text;
            text-decoration: none;
        }
    }
</style>