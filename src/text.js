const word = "hello friend";
console.log(word);

//loop here
for (let i = 0; i < 5; ++i) {
	let line = "";
	for (let j = 0; j <= i; ++j) {
		line += "*";
	}
	console.log(line);
}
