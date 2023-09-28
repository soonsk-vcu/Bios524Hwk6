datatab <- function(key,def){
  ret <- data.frame(Name=key,Description=def)
  knitr::kable(ret, caption="Data Table")%>%
    kable_styling(latex_options = "HOLD_position")
}
