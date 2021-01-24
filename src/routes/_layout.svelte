<script>
	import Head from "../components/Head.svelte";
</script>

<Head />

<main>
	<slot />
</main>

<style>
	main {
		padding: 2rem;
		margin: auto;
		font-size: 1.2rem;
	}

	@media (min-width: 700px) {
		main {
			width: 85%;
		}
	}

	@media (min-width: 1000px) {
		main {
			width: 50%;
		}
	}

	:global(body) {
		transition: background-color 0.3s;
	}
	:global(body.dark-mode) {
		background-color: #2d2d2d;
		color: #ccc;
	}
</style>
