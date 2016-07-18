options(scipen=5)

# basic coupon problem
cereal <- scan("C:\\Users\\Marten\\Dropbox\\pokemongo\\cereal.out")

frame()
plot(ecdf(cereal),
     xlim=c(10, 50),
     xlab="Cereal Boxes",
     ylab="Chance of Complete Set",
     main="Coupon Contest, n=10",
     pch=20
)


# how long does it take to get 101 magikarps?
magikarp <- scan("C:\\Users\\Marten\\Dropbox\\pokemongo\\magikarp.out")

frame()
plot(ecdf(magikarp),
     xlim=c(400, 600),
     xlab="Pokemon Caught",
     ylab="Chance of 101+ Magikarps",
     main="Farming for Magikarp"
)

# imagine we're candy-farming and the only drops are the 74 unevolved mons
candies <- scan("C:\\Users\\Marten\\Dropbox\\pokemongo\\candies.out")
median(candies)
mean(candies)
quantile(candies, c(.5, .66, .95))

frame()
plot(ecdf(candies),
     xlim=c(0, 80000),
     xlab="Pokemon Caught",
     ylab="Chance of Full Pokedex",
     main="Candy Farming The 74 Unevolved Pokemon"
)
points(17472,0.503, pch=20)
text(17472,0.5,labels="median: 17472", pos=4)
points(25443, 0.658, pch=20)
text(25443,0.66,labels="average: 25443", pos=4)
points(70276, 0.95, pch=20)
text(70276,0.95,labels="95% chance: 70276", pos=1)

# location doesn't matter, need 141 pokemons
catchemall <- scan("C:\\Users\\Marten\\Dropbox\\pokemongo\\catchemall.out")
median(catchemall)
mean(catchemall)
quantile(catchemall, c(.5, .66, .95))

frame()
plot(ecdf(catchemall),
     xlim=c(10000, 105000),
     xlab="Pokemon Caught",
     ylab="Chance of Full Pokedex",
     main="Encounters Needed to Catch 'Em All (ignoring location)"
)

points(42190,0.503, pch=20)
text(42190,0.503,labels="median: 42190", pos=4)

points(48892, 0.6, pch=20)
text(48892,0.6,labels="average: 48892", pos=4)

points(102445, 0.95, pch=20)
text(102445, 0.97,labels="95% chance: 102445", pos=2)

# Same data, but by hour instead
frame()
plot(ecdf(catchemall/20),
     xlim=c(500, 6000),
     xlab="Hours Played",
     ylab="Chance of Full Pokedex",
     main="Hours Played, Catching 20 Mons/hr"
)

points(2110,0.503, pch=20)
text(2110,0.503,labels="median: 2110 hrs", pos=4)

points(2444, 0.6, pch=20)
text(2444,0.6,labels="average: 2444 hrs", pos=4)

points(5122, 0.95, pch=20)
text(5122, 0.97,labels="95% chance: 5122 hrs", pos=2)


