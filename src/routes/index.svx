<script context="module">
  export async function preload(page, session) {
    const res = await this.fetch(`blog/posts.json`);
    const posts = await res.json();
    return {posts};
  }
</script>

<script>

  export let posts = [];
  $: {
    if (posts != undefined) {
      posts.map(el => el.attributes.date = new Date(el.attributes.date));
      posts.sort((a, b) => b.attributes.date - a.attributes.date);
    }
  }

</script>

<svelte:head>
    <title>The Sp Blog</title>
</svelte:head>

<div>
    {#each posts as post}
        <div class="article">
            <h2><a href='/blog/{post.attributes.link}'>{post.attributes.title}</a></h2>
            <p>
                {#if post.attributes.date}
                    {post.attributes.date.toDateString()}
                {/if}
                <br/>
                {#if post.attributes.abstract}
                    {post.attributes.abstract}
                {/if}
            </p>
        </div>
    {/each}
</div>

<style>
    p {
        text-align: center;
        margin: 1em auto;
        background-color: inherit;
    }

    h2 {
        text-align: center;
    }

    .article {
        margin: auto;
    }

    .article p, .article h2 {
        text-align: left;
    }

    .article p {
        margin-bottom: 2rem;
    }
</style>