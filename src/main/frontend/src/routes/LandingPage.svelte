<script>
    import { authAPI } from "../api/authAPI.js";
    import Cookies from "js-cookie";

    let username;
    let email;
    let password;

    let error = "";
    let showLogin = false;

    function sendLogin() {
        authAPI.loginUser(username, password).then((response) => {
            password = "";
            if (response.status === 200) {
                Cookies.set("accessToken", response.data.message);
                window.location.href = "/";
            }
            else {
                console.log(response.data);
                error = response.data.message;
            }
        });
    }

     function sendRegister() {
        authAPI.registerUser(username, email, password).then((response) => {
            password = "";
            response.status === 200 ? showLogin = true : error = response.data.message;
        });
    }

    function switchMode() {
        password = "";
        error = "";
        showLogin = !showLogin;
    }

</script>

<main id="main-page">
    <div id="page">
        <div id="page-logo"></div>
        <div id="page-slogan">Page? No.</div>
        <div id="page-slogan-bold">One of the pages of all time.</div>
    </div>
    <form id="form-wrapper">
        <div class="form-item">
            <div class="form-item-title" >Username</div>
            <input bind:value={username} type="text" class="form-item-field">
        </div>
        {#if !showLogin}
            <div class="form-item">
                <div class="form-item-title" >Email</div>
                <input bind:value={email} type="email" class="form-item-field">
            </div>
        {/if}
        <div class="form-item">
            <div class="form-item-title" >Password</div>
            <input bind:value={password} type="password" class="form-item-field">
        </div>
        {#if showLogin}
            <div class="form-submit" on:click={sendLogin}>Login</div>
            <a class="form-changer" on:click={switchMode}>Go to register instead</a>
        {:else }
            <div class="form-submit" on:click={sendRegister}>Register</div>
            <a class="form-changer" on:click={switchMode}>Go to login instead</a>
        {/if}
        <div id="auth-error">{error}</div>
    </form>
</main>

<style lang="scss">
    @import "../_variables.scss";

    #main-page {
        display: flex;
        color: $c-dark-main;
        justify-content: space-between;
        width: calc(100% - (2 * $s-landing-padding));
        height: calc(100vh - (2 * $s-landing-padding));
        padding: $s-landing-padding;
    }

    #page {

        height: 100%;
        width: min($s-landing-page-width, $s-landing-page-width-max);
        &-logo {
            width: $s-landing-logo-width;
            height: $s-landing-logo-height;
            background-color: $c-main;
            border-radius: $s-border-radius;
            overflow: hidden;
            margin-bottom: $s-landing-padding;
        }

        &-slogan {
            width: 100%;
            font-size: $s-landing-slogan-font;
            font-weight: $s-landing-slogan-weight;
            margin-bottom: $s-landing-slogan-margin;

            &-bold {
                width: 100%;
                font-size: $s-landing-slogan-font;
                font-weight: $s-landing-slogan-weight-bold;
            }
        }
    }

    #form-wrapper {
        display: flex;
        flex-direction: column;
        width: calc(100% - $s-landing-page-width - $s-landing-padding - (2 * $s-landing-form-p));
        border-radius: $s-border-radius;
        padding: $s-landing-form-p;
        background-color: $c-shade-secondary;
        overflow: hidden;
    }

    .form {
        &-item {
            width: 100%;
            margin-top: $s-std-margin;

            &:first-of-type {
                border: none;
            }

            &-title {
                width: 100%;
                font-size: $s-form-title;
                margin-bottom: $s-form-item-margin;
            }
            &-field {
                display: flex;
                align-items: center;
                width: calc(100%  - (2 * $s-form-item-p-horizontal));
                height: $s-form-title;
                font-size: $s-form-text;
                font-family: inherit;
                padding: $s-form-item-p-vertical $s-form-item-p-horizontal;
                border-radius: $s-border-radius;
                overflow: hidden;
                background-color: $c-shade-tertiary;
                border: none;
            }
        }

        &-submit {
            display: flex;
            align-items: center;
            justify-content: center;
            border: none;
            border-radius: $s-border-radius;
            background-color: $c-main;
            font-size: $s-form-title;
            line-height: $s-form-title;
            font-family: inherit;
            height: $s-form-title; // TODO: either change to variable or rework button
            padding: $s-form-item-p-vertical $s-form-item-p-horizontal;
            color: $c-shade-main;
            margin-top: $s-form-submit-margin;
            cursor: pointer;
        }

        &-changer {
            cursor: pointer;
            margin-top: $s-std-margin;
            transition: 0.15s;

            &:hover {
                color: $c-main;
            }
        }
    }

    #auth-error {
        margin-top: $s-std-margin;
        color: $c-error-main;
    }

    @media screen and (max-width: $s-std-width) {
        #main-page {
            padding: $s-std-margin;
            width: calc(100% - (2 * $s-std-margin));
            flex-direction: column;
            height: unset;
        }

        #page {
            width: 100%;
        }

        #form-wrapper {
            margin-top: calc(2 * $s-std-margin);
            width: calc(100% - (2 * $s-landing-form-p));
        }
    }
</style>