<script>
    export let content = {};
</script>

<section>
    <div id="header">
        <img src={content.imageUrl} alt="A header image of {content.title}" id="header-image">
    </div>
    <div id="desc">
        <div id="desc-title">{content.title}</div>
        <div id="desc-text">{content.description}</div>
    </div>
</section>

<style lang="scss">
    @import "../_variables.scss";

    #header {
        margin-top: $s-std-margin;
        width: 100%;
        aspect-ratio: 21 / 9;
        position: relative;
        border-radius: $s-border-radius;
        overflow: hidden;

        &-image {
            height: 100%;
            width: 100%;
            object-fit: cover;
        }
    }

    #desc {
        display: flex;
        flex-direction: column;
        width: calc(100% - (2 * $s-description-p));
        padding: $s-description-p-top $s-description-p $s-description-p;
        border-radius: $s-border-radius;
        background-color: $c-shade-secondary;
        margin-top: $s-std-margin;

        &-title {
            color: $c-dark-main;
            font-size: $s-description-title;
            font-weight: 700;
        }

        &-text {
            color: $c-dark-main;
            margin-top: $s-description-text-margin;
            font-size: $s-description-text;
        }
    }
</style>