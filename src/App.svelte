<script>
    import File from './File.svelte'
	const name = 'World';
    const src = 'https://placekitten.com/200/200';
    const string = `в этой строке есть <strong>HTML!!!</strong> код`;
    let count = 0;
    $: square = count*count;
    function handleClick() {
      count +=1;
    }
    setInterval(()=>{
        count > 0 ? count -= 1 : count = 0
    },1500);
    $: {console.log(`count is ${count}`);
    console.log(`square is ${square}`);}
</script>

<style>
	h1 {
		color: red;
		font-style: italic;
	}
	p{
	    color: darkgreen;
	    font-style: oblique;
	    font-family: "Arabic Typesetting";
	    font-size: 30px;
	}
</style>

<h1>Hello {name.toUpperCase()}!</h1>
<button on:click={handleClick}>
{count === 0 ? 'click me' : `clicks: ${count}`}
</button>
<p>square is {square}</p>
<p>{@html string}</p>
<img {src} alt="kitty">
<File/>
