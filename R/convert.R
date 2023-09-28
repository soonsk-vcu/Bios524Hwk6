

convert <- function(lst, from, to, interval=FALSE){
  isString <- FALSE
  # if converting letters within single string, do a split
  if(typeof(lst) == "character" & length(lst) == 1){
    vec <- (strsplit(lst,""))[[1]]
    isString <- TRUE
  }else{
    vec <- lst
  }

  aux <- function(x, from, to){
    ind <- ifelse(interval, which(from >= x)[1], which(from == x))
    ifelse(length(ind) > 0  & !is.na(ind),to[ind],
           ifelse(interval, to[length(to)], x))
  }


  ret <- sapply(vec, aux, from=from, to=to)
  if(isString){
    ret <- paste(ret, collapse = "")
  }
  ret
}
