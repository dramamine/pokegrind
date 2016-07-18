
// for the magikarp problem
// you need 101 magikarps; how long will that take?
// 
const magikarp = (n, p) => {
	let random;
	let karps = 0;
	let i = 0;
	// off by one, probs
	for(; karps < n; i++) {
		random = Math.random();
		if (random < p) {
			karps++;
		}
	}
	return i;
};

while(true) {
  console.log(magikarp(101, .20));
}
