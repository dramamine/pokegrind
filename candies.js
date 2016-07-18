
const rarities = [0.0007995906,0.0003518199,0.003379603,0.0042644833,0.0002665302,0.0015565364,0.0008848803,0.0004051259,0.0007995906,0.0004051259,0.0021322416,0.0015138916,0.0002665302,0.0004051259,0.0002665302,0.0002665302,0.0000426448,0.0090193821,0.0004051259,0.0007143009,0.2434380264,0.0027612529,0.0329431331,0.0031130728,0.0023134822,0.0004051259,0.0185824858,0.0085822725,0.0184971961,0.0113328642,0.00573573,0.0086675622,0.12380861,0.0026226572,0.0052453144,0.0177828952,0.0013752958,0.0166741295,0.0031130728,0.0607688863,0.0014712467,0.0003518199,0.0012473614,0.0012473614,0.017516365,0.0031983624,0.0591270603,0.0020895968,0.0022175313,0.0014712467,0.0027612529,0.0010661208,0.0030277831,0.0036034883,0.0006183501,0.0004051259,0.0221433293,0.0216955585,0.0161837139,0.0156506535,0.0005757052,0.0004051259,0.0004051259,0.018849016,0.0190729013,0.0108957547,0.0046269643,0.0592549948,0.0139555214,0.0059596153,0.0376980319,0.0311200665,0.0009808311,0.0031983624]

const needed = [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,4,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,16,16,16,19,32,32,32,32,32,32,32,32,32,32,32,32,32,101]

if (needed.length !== rarities.length) {
  console.log('something wrong with rarities / needed');
  exit;
}


// pull a random index 
const getRandom = (weights) => {
  const num = Math.random();
  let s = 0;
  let lastIndex = weights.length - 1;

  for (var i = 0; i < lastIndex; ++i) {
    s += weights[i];
    if (num < s) {
      return i;		
    }
  }

  return -1;
};

const countChecker = (map, needed) => {
  let res = true;
  map.forEach((count, idx) => {
  	// console.log('from map:', idx, count);
  	if (idx > 74) {
  	  console.log('wow this index was really high.', idx, count);
  	}
  	if (idx === -1) {
  	  return;
  	} 
  	// console.log(`comparing ${needed[idx]} (${idx}) to ${count}`);
  	if (needed[idx] < count) {
  	  res = false;
  	}
  })
  return res;
}

const fillPokedex = (rarities, needed) => {
	const entries = needed.length;

	const dex = new Map();
	let draws = 0;
	let mon;
	// console.log('comparing ', dex.size, entries);
	while (dex.size < entries || countChecker(dex, needed)) {
		draws++;
		mon = getRandom(rarities);
		if (mon > 74) {
		  console.log('got weird mon value:', mon);
		}

		if (dex.has(mon)) {
		  const updated = dex.get(mon) + 1;
		  dex.set(mon, updated);
		  // console.log(`${mon} now has ${dex.get(mon)}`);
		} else {
		  dex.set(mon, 1);
		}
		// console.log(`${mon}: now progress is '${dex.size}/${entries}`);
	}
	return draws;
}


while(true) {
	console.log(fillPokedex(rarities, needed));
}

