<script>
	import Head from '../components/Head.svelte';
</script>

<Head/>

<main>
	<slot></slot>
</main>

<style>
	main {
		padding: 2rem;
		margin: auto;
		font-size: 1.2rem;
	}

	img {
		width: 100%;
	}

	main h1 {
		font-family: Times;
	}

	code {
		word-wrap: break-word;
		width: 100%;
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
</style>