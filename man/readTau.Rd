% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/readTau.R
\name{readTau}
\alias{readTau}
\title{Read Tau}
\usage{
readTau(subtype = "paper")
}
\arguments{
\item{subtype}{Type of Tau data that should be read. Available types are:
\itemize{ \item \code{paper}: numbers as they are reported in the paper
(cellular, crop-specific) \item \code{historical}: historic tau values on
iso country level for total tau factor. This numbers were calculated by
taking FAO yields and norming it to the 1995 tau values of the paper
(faoyields*tau95/mean(faoyields[1995:2005])) }}
}
\value{
Tau data and weights as MAgPIE object in original resolution
}
\description{
Read-in landuse intensity data (tau) following the methodology published in
Dietrich J.P., Schmitz C., Mueller C., Fader M., Lotze-Campen H., Popp A.,
Measuring agricultural land-use intensity - A global analysis using a
model-assisted approach, Ecological Modelling, Volume 232, 10 May 2012,
Pages 109-118, ISSN 0304-3800, 10.1016/j.ecolmodel.2012.03.002. The data
itself comes from the script prepare_data.R stored in the PIK svn at
http://subversion/svn/magpie/paper/ti-paper/sonstiges/scripts/scripts2011.
The file which is normally used is called tau_data_1995-2005.mz.
}
\examples{

\dontrun{ a <- readSource("Tau")
}
}
\seealso{
\code{\link{readSource}}
}
\author{
Jan Philipp Dietrich
}
