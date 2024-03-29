% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cacheCleanup.R
\name{cacheCleanup}
\alias{cacheCleanup}
\title{cacheCleanup}
\usage{
cacheCleanup(
  daysThreshold,
  path = getConfig("cachefolder", verbose = FALSE),
  timeType = c("atime", "mtime", "ctime"),
  ask = TRUE,
  readlineFunction = readline
)
}
\arguments{
\item{daysThreshold}{Files older than this many days are deleted/returned.}

\item{path}{Path to where to look for old files.}

\item{timeType}{Which file metadata time should be used. One of atime (last access time, default),
mtime (last modify time), ctime (last metadata change).}

\item{ask}{Whether to ask before deleting.}

\item{readlineFunction}{Only needed for testing. A function to prompt the user for input.}
}
\value{
If the user answers 'n', a data.frame as returned by base::file.info, containing only files older than
<daysThreshold> days.
}
\description{
Delete files older than the specified number of days, based on file time metadata (per default atime = last access
time).
}
\details{
File time metadata is not available on all systems and the semantics are also system dependent, so please be
careful and check that the correct files are deleted. This function will return a data.frame containing all
files that would be deleted if the user answers 'n' to the question. If deleting files fails a warning is created.
}
