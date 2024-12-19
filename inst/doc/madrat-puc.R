## ----echo = FALSE-------------------------------------------------------------
knitr::opts_chunk$set(collapse = TRUE, comment = "#>")

## ----echo = TRUE, eval=FALSE--------------------------------------------------
#  library(madrat, quietly = TRUE)
#  retrieveData("EXAMPLE", rev = 42, puc = TRUE, extra = "Extra Argument")

## ----echo = TRUE, eval=FALSE--------------------------------------------------
#  calcExample <- function() {
#    return(list(x = data,
#                putInPUC = FALSE))
#  }

## ----echo = TRUE, eval=FALSE--------------------------------------------------
#  fullEXAMPLE <- function(rev = 0, dev = "", extra = "Example argument") {
#  
#    "!# @pucArguments extra"
#  
#    writeLines(extra, "test.txt")
#  
#    if (rev >= numeric_version("1")) {
#      calcOutput("TauTotal", years = 1995, round = 2, file = "fm_tau1995.cs4")
#    }
#    if (dev == "test") {
#      message("Here you could execute code for a hypothetical development version called \"test\"")
#    }
#    # return is optional, tag is appended to the tgz filename, pucTag is appended to the puc filename
#    return(list(tag = "customizable_tag",
#                pucTag = "tag"))
#  }

