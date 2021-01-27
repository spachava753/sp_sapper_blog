<script>
    export let user, repo, alt;
</script>

<a href="https://github.com/{user}/{alt}/stargazers"
    ><img
        {alt}
        src="https://img.shields.io/github/stars/{user}/{repo}?label=star%E2%9C%A8"
    /></a
>

<style>
    img {
        display: inline;
        width: auto;
        vertical-align: middle;
        height: 1.8ch;
        width: auto;
    }
    a {
        text-decoration: none;
        background-image: none;
    }
</style>
