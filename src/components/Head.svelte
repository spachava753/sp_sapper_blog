<script>
import DarkModeButton from "./DarkModeButton.svelte";

</script>

<nav>
    <div style="text-align: center;">
        <a href="/">The Sp Blog</a>
        <p>Thoughts, musings and education posts by Shashank Pachava</p>
        <DarkModeButton>Dark mode</DarkModeButton>
    </div>
</nav>

<style>
    nav {
        padding: 1rem;
    }

    nav div p {
        font-size: 1.5rem;
    }

    a {
        text-align: center;
        --line-height: 5px;
        font-size: 5rem;
        color: #00b1ba;
        font-family: Times, sans-serif;
        font-weight: 700;
    }

    @media (max-width: 600px) {
        nav {
            padding: 0.6rem;
        }
        a {
            font-size: 2.2rem;
        }
        nav div p {
            font-size: 1.4rem;
        }
    }
</style>
