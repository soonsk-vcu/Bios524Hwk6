pythagoras <- function(a=0,b=0,c=0){
  # parameter typing and size check
  args <- c(a,b,c)
  if(!is.numeric(args) | sum(as.logical(args)) != 2){
    stop("Expected 2 numeric parameters")
  }

  # compute missing side
  sqrt(abs(c^2 - a^2 - b^2))
}

# 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
