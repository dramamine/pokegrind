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
     xlab="Pokemon Encounters",
     ylab="Chance of 101+ Magikarps",
     main="Farming Magikarp"
)

# imagine we're candy-farming and the only drops are the 74 unevolved mons
candies <- scan("C:\\Users\\Marten\\Dropbox\\pokemongo\\candies.out")
median(candies)
mean(candies)
quantile(candies, c(.5, .66, .95))

frame()
plot(ecdf(candies),
     xlim=c(0, 100000),
     xlab="Pokemon Encounters",
     ylab="Chance of Full Pokedex",
     main="Candy-Farming The 74 first-evolution Pokemon"
)



points(17472, 0.5, pch=20)
text(17472,0.5,labels="median: 17472", pos=4)

points(25444,0.655, pch=20)
text(25444,0.655,labels="average: 25444", pos=4)

points(70276, 0.95, pch=20)
text(74276, 0.95,labels="95% chance: 70276", pos=1)
 
points(873, 0.5, pch=20)
text(873,0.5,labels="median: 873 hrs", pos=4)

points(1272,0.655, pch=20)
text(1272,0.655,labels="average: 1272 hrs", pos=4)

points(3513, 0.95, pch=20)
text(3513, 0.95,labels="95% chance: 3513 hrs", pos=1)



# location doesn't matter, need 141 pokemons
catchemall <- scan("C:\\Users\\Marten\\Dropbox\\pokemongo\\catchemall.out")
median(catchemall)
mean(catchemall)
quantile(catchemall, c(.5, .66, .95))

frame()
plot(ecdf(catchemall),
     xlim=c(10000, 105000),
     xlab="Pokemon Encounters",
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
     xlim=c(500, 5250),
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



halfyourdex <- read.csv("C:\\Users\\Marten\\Dropbox\\pokemongo\\halfyourdex.out", header=FALSE)
frame()
plot(halfyourdex$V1, halfyourdex$V2,
     xlab="Encounters to 50% Complete Pokedex",
     ylab="Encounters to 75% Complete Pokedex",
     main="Random Battles Forever",
     pch=".")

mean(halfyourdex$V2 / halfyourdex$V1)
text(1080, 3700, "Average multiplier: 3.6x")

frame()
plot(halfyourdex$V2, halfyourdex$V4,
     ylim=c(3900, 14000),
     xlab="Encounters to 75% Complete Pokedex",
     ylab="Encounters to 94% Complete Pokedex",
     main="Random Battles Forever",
     pch=".")

mean(halfyourdex$V4 / halfyourdex$V2)
text(3450, 13800, "Average multiplier: 3.4x")

