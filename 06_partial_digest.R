

Place <- function(deltaX, x, width){

  if (length(deltaX) == 0){
    return(x)
  }
  y <- max(deltaX)
  #Δ(y, X)` is a multiset of lengths between value `y` and all values in `X`.
  if ()
  
  # 1   if deltaX is empty
  # 2     output X
  # 3     return
  # 4   y ← the maximum element from deltaX
  # 5   if Δ(y, X) ⊆ deltaX
  # 6     add y to X and remove the lengths Δ(y, X) from deltaX
  # 7     Place(deltaX, X, width)
  # 8     remove y from X and add the lengths Δ(y, X) to deltaX
  # 9   if Δ(width - y, X) ⊆ deltaX
  # 10    add width - y to X and remove the lengths Δ(width - y, X) from deltaX
  # 11    Place(deltaX, X, width)
  # 12    remove width - y from X and add the lengths Δ(width - y, X) to deltaX
  # 13  return  
}
  

Remove <- function(){
  
}