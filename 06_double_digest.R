install.packages("gtools")  # jednorázově
library(gtools)             # načíst balíček


DoubleDigestProblem <- function(set1, set2, set12){
  n_try = 1
  for (t in 1:n_try){
    pos_map1 <- cumsum(set1)
    pos_map2 <- cumsum(set2)
    pos_map10 <- append(pos_map1, 0, 0)
    pos_map20 <- append(pos_map2, 0, 0)
    pos_comb <- sort(unique(c(pos_map10,pos_map20)))
    s_s_diff <- sort(diff(pos_comb))
    if (identical(s_s_diff, set12)) {
      return(list(pos_map1[-length(pos_map1)], pos_map2[-length(pos_map2)]))
    } else{
      return('wrong')
    }    
  }
}

DoubleDigestProblem2 <- function(set1, set2, set12){
  perm1 = permutations(n = length(set1), r = length(set1), v = set1)
  perm2 = permutations(n = length(set2), r = length(set2), v = set2)
  
  for (p1 in 1:nrow(perm1)) {
    s1 <- c(perm1[p1, ])
    for (p2 in 1:nrow(perm2)) {
      s2 <- c(perm2[p2, ])
      
      pos_map1 <- cumsum(s1)
      pos_map2 <- cumsum(s2)
      pos_map10 <- append(pos_map1, 0, 0)
      pos_map20 <- append(pos_map2, 0, 0)
      pos_comb <- sort(unique(c(pos_map10,pos_map20)))
      s_s_diff <- sort(diff(pos_comb))
      
      if (identical(s_s_diff, set12)) {
        return(list(pos_map1[-length(pos_map1)], pos_map2[-length(pos_map2)]))
      }  
    }
  }
}




# set1 <- c(3, 5, 2, 10)
# set2 <- c(7, 3, 10)
# set12 <- c(1, 2, 2, 5, 5, 5)

set1 <- c(2, 3, 5, 10)
set2 <- c(7, 3, 10)
set12 <- c(1, 2, 2, 5, 5, 5)


aa <- DoubleDigestProblem2(set1, set2, set12)
