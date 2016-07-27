'use strict';
// modified ratatat to change sum from 1.01166 to 1
const weights = [.21668,.11613,.057,.05558,.05546,.03536,.0309,.02919,.02077,.02035,.01789,.01768,.01743,.01735,.01668,.01643,.01564,.01518,.01514,.01468,.01309,.01063,.01022,.00846,.00813,.00805,.00717,.00559,.00538,.00492,.00434,.004,.00367,.00354,.00338,.00325,.00317,.00313,.003,.003,.00292,.00292,.00288,.00284,.00259,.00259,.00246,.00225,.00221,.00217,.00208,.002,.00196,.00196,.00154,.00146,.00142,.00138,.00138,.00129,.00121,.00117,.00117,.00113,.00104,.001,.00092,.00092,.00088,.00088,.00083,.00083,.00083,.00079,.00079,.00075,.00075,.00071,.00071,.00071,.00067,.00063,.00063,.00058,.00054,.00054,.00054,.0005,.0005,.0005,.0005,.0005,.0005,.0005,.00042,.00038,.00038,.00038,.00038,.00038,.00038,.00038,.00038,.00038,.00038,.00038,.00038,.00038,.00033,.00033,.00033,.00033,.00033,.00033,.00033,.00033,.00033,.00033,.00029,.00025,.00025,.00025,.00025,.00025,.00025,.00025,.00025,.00025,.00025,.00025,.00025,.00025,.00025,.00025,.00025,.00025,.00025,.00025,.00017,.00013,.00013,.00008,.00008,.00004,.00004,.00004];

const mons = weights.length;

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



const fillPokedex = (weights, entries) => {
  const checks = [entries / 2, entries / 4, entries / 8, entries / 16];
  const results = [0, 0, 0, 0];

  let firstDraw = 0;

  const dex = new Set();
  let draws = 0;
  let mon;
  while (dex.size < entries) {
    draws++;
    mon = getRandom(weights);
    if (!dex.has(mon)) {
      dex.add(mon);
      for(let i = 0; i < results.length; i++) {
        if (!results[i] && dex.size > entries - checks[i]) {
          results[i] = draws;
        }
      }
    }
  }
  return results;
}

let results;
while(true) {
  results = fillPokedex(weights, weights.length);
  console.log(`${results[0]},${results[1]},${results[2]},${results[3]}`);
}
