library(tidyverse)

## 1
dec <- function(x){
  if(x > 0 ){
  result <- x - sqrt(x)
  }
  else{
    result <- x
  }
  return(result)
}

dec(100)

## 2
cylind <- function(radius, height){
  # Volume = pi * r^2 * h
  volume <- pi * radius^2 * height
  # Surface = 2 * pi * r * h + 2 * pi * r^2
  surface <- (2 * pi * radius * height) + (2 * pi * radius^2)
  
  result <- data.frame(volume = volume, surface = surface)
  return(result)
}

cylind(10, 4.5)


## 3
nine <- function(a){
  if(a %% 9 == 0){
    print(paste(a, " is divisible by 9"))
  }
  else{
    print(paste(a, " is not divisible by 9"))
  }
}
nine(153)
nine(2009)


## 4
for(i in seq(10,1)){
  result <- i^3 - i^2
  print(result)
}

## 5
U <- c("Maine" , "Texas", "Delaware", "Oregon", "Utah", "Vermont", "Ohio")
# U is an atomic vector because it have values of the same type

U[c(1,6)]

U[-2]

length(U)


## 6
V = list("Chicago", k = list( 2, 6, 18, 24), FALSE, 13, 1.3, y = 1:10)

# V is a list because it has objects/elements of different types

V[5]

str(V)


## 7
tribble( ~John, ~Raymond, ~Martha, ~Alice, ~Juan,
         86, 77, 81, 88, 90,
         79, 78, 85, 81, 78,
         76, 75, 88, 94, 81,
         84, 90, 71, 84, 89,
         100, 80, 93, 85, 84,
         90, 73, 70, 88, 93,
) -> TestScores
TestScores

map_dbl(TestScores, median)


as.data.frame(map(TestScores, function(x)(x^(1/3))))

as.data.frame(map(TestScores, function(x)(x - x)))
                  

## 8 
mat <- matrix(nrow = 3, ncol = 4)
for(i in 1:3){
  for(j in 1:4){
    mat[i,j] = -((i+j)^2)
  }
}
mat


## 9
data("midwest")
midwest |>
  mutate(state = ifelse(state == "WI","Wisconsin", state)) |>
  filter(state == "Wisconsin") |>
  arrange(county) |>
  select(state, county, area, percollege) |>
  print(n = 20)

  