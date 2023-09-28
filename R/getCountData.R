getCountData <- function(tab, exp, group){
  tab %>% filter({{exp}}) %>% group_by(!!sym(group)) %>% summarize(n=n())
}
