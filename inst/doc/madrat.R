## ----echo = FALSE-------------------------------------------------------------
knitr::opts_chunk$set(collapse = TRUE, comment = "#>")

## ----echo = TRUE, eval = FALSE------------------------------------------------
#  library(madrat)
#  cfg <- getConfig()
#  #> Initialize madrat config with default settings..
#  #> madrat mainfolder for data storage not set! Do you want to set it now? (y/n)

## ----echo = TRUE--------------------------------------------------------------
madrat:::downloadTau

## ----echo = TRUE, eval = FALSE------------------------------------------------
#  downloadSource("Tau", overwrite = TRUE)

## ----echo = TRUE--------------------------------------------------------------
madrat:::readTau

## ----echo = TRUE, eval = FALSE------------------------------------------------
#  x <- readSource("Tau", "paper", convert = FALSE)

## ----echo = TRUE--------------------------------------------------------------
madrat:::convertTau

## ----echo = TRUE, eval = FALSE------------------------------------------------
#  x <- readSource("Tau", "paper")

## ----echo = TRUE--------------------------------------------------------------
madrat:::calcTauTotal

## ----echo = TRUE, eval = FALSE------------------------------------------------
#  x <- calcOutput("TauTotal")

## ----echo = TRUE--------------------------------------------------------------
madrat:::fullEXAMPLE

## ----echo = TRUE, eval = FALSE------------------------------------------------
#  retrieveData("example", rev = 1)

## ----echo = TRUE, eval = FALSE------------------------------------------------
#  library(madrat)
#  
#  # add global environment to madrat search path
#  setConfig(globalenv = TRUE)
#  
#  # define simple calc-function
#  calcPi <- function() {
#    out <- toolCountryFill(NULL, fill = pi)
#    return(list(x = out,
#                weight = out,
#                unit = "1",
#                description = "Just pi"))
#  }
#  
#  # run calcPi through wrapper function calcOutput
#  calcOutput("Pi")
#  

## ----eval = FALSE-------------------------------------------------------------
#  .onAttach <- function(libname, pkgname) {
#    madrat::madratAttach(pkgname)
#  }
#  
#  .onDetach <- function(libpath) {
#    madrat::madratDetach(libpath)
#  }

