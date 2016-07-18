
// modified ratatat to change sum from 1.01166 to 1

// pull a random index 
const getRandom = (entries) => {
  const num = Math.random();
  return Math.floor(num * entries);
};



const coupons = (entries) => {
	const dex = new Set();
	let draws = 0;
	let mon;
	// console.log('comparing ', dex.size, entries);
	while (dex.size < entries) {
		draws++;
		mon = getRandom(entries);
		dex.add(mon);
		// console.log(`${mon}: now progress is '${dex.size}/${entries}`);
	}
	return draws;
}

while(true) {
	console.log(coupons(10));
}
