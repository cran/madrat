## ---- echo = FALSE------------------------------------------------------------
knitr::opts_chunk$set(collapse = TRUE, comment = "#>")

## ---- echo = TRUE, eval=TRUE--------------------------------------------------
library(madrat, quietly = TRUE)
getConfig("cachefolder", verbose = FALSE)

## ---- echo = TRUE, eval=TRUE--------------------------------------------------
getDependencies("calcTauTotal")

## ---- echo = TRUE, eval=TRUE--------------------------------------------------
setConfig(verbosity=3)
fp <- madrat:::fingerprint("calcTauTotal", details = TRUE)

## ---- echo = TRUE, eval=FALSE-------------------------------------------------
#    "!# @monitor madrat:::sysdata magclass:::ncells"
#    "!# @ignore  madrat:::toolAggregate"

## ---- echo = TRUE, eval=TRUE--------------------------------------------------
  setConfig(globalenv = TRUE)
  readData <- function() return(1)
  readData2 <- function() return(2)
  calcExample <- function() {
    a <- readSource("Data")
  }
  calcExample2 <- function() {
    a <- readSource("Data")
    if(FALSE) b <- readSource("Data2")
  }

## ---- echo = TRUE, eval=TRUE--------------------------------------------------
  fp <- madrat:::fingerprint("calcExample", details = TRUE)
  fp2 <- madrat:::fingerprint("calcExample2", details = TRUE)

## ---- echo = TRUE, eval=TRUE--------------------------------------------------
  readData <- function() return(99)
  fp <- madrat:::fingerprint("calcExample", details = TRUE)
  fp2 <- madrat:::fingerprint("calcExample2", details = TRUE)

## ---- echo = TRUE, eval=TRUE--------------------------------------------------
  readData2 <- function() {
    "!# @monitor madrat:::toolAggregate"
    return(99)
  } 
  fp <- madrat:::fingerprint("calcExample", details = TRUE)
  fp2 <- madrat:::fingerprint("calcExample2", details = TRUE)

## ---- echo = TRUE, eval=TRUE--------------------------------------------------

  calcExample2 <- function() {
    "!# @ignore readData2"
    a <- readSource("Data")
    if(FALSE) b <- readSource("Data2")
  }

  calcExample3 <- function() {
    a <- calcOutput("Example2")
  }

  fp2 <- madrat:::fingerprint("calcExample2", details = TRUE)
  fp3 <- madrat:::fingerprint("calcExample3", details = TRUE)

