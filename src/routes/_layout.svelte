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

	:global(pre) {
		white-space: pre-wrap; /* css-3 */
		white-space: -moz-pre-wrap; /* Mozilla, since 1999 */
		white-space: -pre-wrap; /* Opera 4-6 */
		white-space: -o-pre-wrap; /* Opera 7 */
		word-wrap: break-word; /* Internet Explorer 5.5+ */
		font-family: monospace, menlo, inconsolata;
		font-size: calc(1em - 2px);
		background-color: #f0f0f0;
		padding: 0.2em 0.4em;
		border-radius: 2px;
		color: #555;
	}

	:global(body.dark-mode pre) {
		background-color: #555;
		color: #f0f0f0;
	}

	:global(body) {
		transition: background-color 0.3s;
	}
	:global(body.dark-mode) {
		background-color: #080c0f;
		color: #eaebec;
	}
</style>
