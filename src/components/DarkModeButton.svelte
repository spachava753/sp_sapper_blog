<script>
    function toggle() {
        window.document.body.classList.toggle("dark-mode");
    }
</script>

<button on:click={toggle}>
    <slot />
</button>

<style>
    button {
        background-color: #00b1ba;
        color: white;
        border: none;
        border-radius: 4px;
        padding: 0.5rem;
        text-transform: uppercase;
    }
</style>
