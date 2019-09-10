# 
# Author: Graham Smith
# 
# A simulation of a lottery based on flipping a bent coin 10 times
#
# Currently written with questionable coding practices
#

library(stats)

coin_flips <- 10
replicates <- 100
Tails <- 1
Heads <- 0


for (j in 1:replicates){
  trial <- array(0,coin_flips)
  for (i in 1:coin_flips){
    trial[i] <- if (runif(1) < 0.1) Tails else Heads
  }
  print(trial)
}