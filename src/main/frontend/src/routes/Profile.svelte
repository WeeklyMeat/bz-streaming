<script>
    import {userAPI} from "../api/userAPI.js";
    import {animeAPI} from "../api/animeAPI.js";

    let hasLoaded = false;
    let updatePassword = false;
    let passwordOld;
    let passwordNew;
    let passwordRepeat;
    let error = "";
    let user = {
        id: "",
        username: "",
        avatar_Url: "",
        email: ""
    }

    userAPI.get().then((data) => {
        user = data;
        hasLoaded = true;
    });

    function sendNewPassword() {
        if (passwordNew === passwordRepeat) {
            userAPI.updatePassword(passwordOld, passwordNew).then((response) => {
                if (response.status === 200) {
                    error = "";
                    updatePassword = false;
                }
                else {
                    error = response.data;
                }
            });
        }
        else {
            error = "Passwords do not match";
        }
        passwordOld = "";
        passwordNew = "";
        passwordRepeat = "";
    }

    function doUpdatePassword() {
        updatePassword = true;
    }
</script>

<main id="main-page">
    {#if hasLoaded}
        <div class="profile">
            <div class="profile-avatar">
                <img class="profile-avatar-image" src={user.avatar_Url} alt="avatar">
            </div>
            <div class="profile-description">
                <div class="profile-data-set">
                    <div class="profile-data">Username:</div>
                    <div class="profile-data">{user.username}</div>
                </div>
                <div class="profile-data-set">
                    <div class="profile-data">Email:</div>
                    <div class="profile-data">{user.email}</div>
                </div>
                {#if updatePassword}
                    <div class="profile-form">
                        <input type="password" class="profile-form-input" placeholder="Current password" bind:value={passwordOld}>
                        <input type="password" class="profile-form-input" placeholder="New password" bind:value={passwordNew}>
                        <input type="password" class="profile-form-input" placeholder="Repeat new password" bind:value={passwordRepeat}>
                    </div>
                    <div class="profile-button" on:click={sendNewPassword}>Save</div>
                {:else}
                    <div class="profile-button" on:click={doUpdatePassword}>Change password</div>
                {/if}
                {#if error !== ""}
                    <div class="profile-error">{error}</div>
                {/if}
            </div>
        </div>
    {/if}
</main>

<style lang="scss">
    @import "../_variables.scss";

    #main-page {
        width: min($s-profile-width, calc(100% - (2 * $s-std-margin)));
    }

    .profile {
        display: flex;
        flex-direction: column;
        width: calc(100% - (2 * $s-profile-p));
        background-color: $c-shade-secondary;
        border-radius: $s-border-radius;
        padding: $s-profile-p;
        margin-top: $s-std-margin;
        overflow: hidden;

        &-avatar {
            display: flex;
            justify-content: center;
            width: 100%;
            height: $s-profile-image;

            &-image {
                height: 100%;
                aspect-ratio: 1 / 1;
                border-radius: $s-infinite;
                object-fit: cover;
                overflow: hidden;
            }
        }

        &-description {
            margin-top: $s-profile-desc-m;
        }

        &-data {
            width: 50%;
            font-size: $s-profile-data;
            color: $c-dark-main;

            &-set {
                display: flex;
                margin-top: $s-std-margin;
                width: 100%;
            }
        }

        &-button {
            display: flex;
            align-items: center;
            justify-content: center;
            margin-top: $s-profile-desc-m;
            width: calc(50% - (2 * $s-profile-button-p));
            padding: $s-profile-button-p;
            font-size: $s-profile-data;
            border-radius: $s-border-radius;
            background-color: $c-shade-tertiary;
            cursor: pointer;
            color: $c-dark-main;
            transition: 0.15s;

            &:hover {
                background-color: $c-main;
                color: $c-shade-main;
            }
        }

        &-form {
            display: flex;
            flex-direction: column;
            margin-top: $s-profile-desc-m;
            width: 50%;

            &-input {
                width: calc(100% - (2 * $s-profile-input-p));
                margin-top: $s-std-margin;
                padding: $s-profile-input-p;
                font-size: $s-profile-data;
                border-radius: $s-border-radius;
                background-color: $c-shade-tertiary;
                color: $c-dark-main;
                transition: 0.15s;
                border: none;
                font-family: inherit;
            }
        }

        &-error {
            margin-top: $s-std-margin;
            color: $c-error-main;
        }
    }

    @media screen and (max-width: $s-std-width-break) {
        .profile-form {
            width: 100%;
        }

        .profile-button {
            width: calc(100% - (2 * $s-profile-button-p));
        }
    }

</style>