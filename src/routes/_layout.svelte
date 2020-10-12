<script>
	import Head from '../components/Head.svelte';

	export let segment;
</script>

<style>
	main {
		padding: 2rem;
		width: 50%;
		margin: auto;
	}

	@media (max-width: 600px) {
		main {
			width: 70%;
		}
	}

	@media (max-width: 400px) {
		main {
			width: 90%;
		}
	}
</style>

<Head/>

<main>
	<slot></slot>
</main>