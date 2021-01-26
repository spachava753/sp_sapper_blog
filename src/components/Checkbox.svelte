<script>
    export let checked;
</script>

<input type="checkbox" checked={checked} on:click|preventDefault={() => {}}><slot></slot><br/>