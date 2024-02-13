<script>
    import { Link } from "svelte-routing";
</script>

<main id="main-page">
    <div id="page">
        <div id="page-slogan">Beep, Boop! - <span id="page-slogan-error">404</span></div>
        <div id="page-slogan-bold">Seems like you've been misdirected.</div>
        <Link to={"/"}></Link>
    </div>
</main>

<style lang="scss">
    @import "../_variables.scss";

    #main-page {
        display: flex;
        color: $c-dark-main;
        width: calc(100% - (2 * $s-landing-padding));
        height: calc(100vh - $s-nav-height - (2 * $s-nav-p-vertical) - $s-nav-border - (2 * $s-landing-padding));
        padding: $s-landing-padding;
    }

    #page {
        width: min(100%, 1200px);
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

            &-error {
                color: $c-error-main;
            }

            &-bold {
                width: 100%;
                font-size: $s-landing-slogan-font;
                font-weight: $s-landing-slogan-weight-bold;
            }
        }
    }
</style>