<script>
    export let title;
    export let date;
    export let link;
    export let abstract;

    console.log(`title: ${title}`);
    console.log(`date: ${date}`);
    console.log(`link: ${link}`);
    console.log(`abstract: ${abstract}`);
</script>

<div>
    <h1 id="title">{title}</h1>
    <slot />
</div>

<style>
    #title {
        font-size: 2rem;
    }

    @media (min-width: 600px) {
        #title {
            font-size: 4rem;
        }
    }
</style>
