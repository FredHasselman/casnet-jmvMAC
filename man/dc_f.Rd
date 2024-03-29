% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dc.R
\name{dc_f}
\alias{dc_f}
\title{Fluctuation Intensity}
\usage{
dc_f(
  df,
  win = NROW(df),
  scale_min,
  scale_max,
  doPlot = FALSE,
  useVarNames = TRUE,
  colOrder = TRUE,
  useTimeVector = NA,
  timeStamp = "01-01-1999"
)
}
\arguments{
\item{df}{A data frame containing multivariate time series data from 1 person. Rows should indicate time, columns should indicate the time series variables. All time series in \code{df} should be on the same scale, an error will be thrown if the range of the time series in\code{df} is not \verb{[scale_min,scale_max]}.}

\item{win}{Size of window in which to calculate Dynamic Complexity. If \code{win < NROW(df)} the window will move along the time series with a stepsize of \code{1} (default = \code{NROW(df)})}

\item{scale_min}{The theoretical minimum value of the scale. Used to calculate expected values, so it is important to set this to the correct value.}

\item{scale_max}{The theoretical maximum value of the scale. Used to calculate expected values, so it is important to set this to the correct value.}

\item{doPlot}{If \code{TRUE} shows a Complexity Resonance Diagram of the Dynamic Complexity and returns an invisible \code{\link[ggplot2:ggplot]{ggplot2::ggplot()}} object. (default = \code{FALSE})}

\item{useVarNames}{Use the column names of \code{df} as variable names in the Complexity Resonance Diagram (default = \code{TRUE})}

\item{colOrder}{If \code{TRUE}, the order of the columns in \code{df} determines the of variables on the y-axis. Use \code{FALSE} for alphabetic/numeric order. Use \code{NA} to sort by by mean value of Dynamic Complexity (default = \code{TRUE})}

\item{useTimeVector}{Parameter used for plotting. A vector of length \code{NROW(df)}, containing date/time information (default = \code{NA})}

\item{timeStamp}{If \code{useTimeVector} is not \code{NA}, a character string that can be passed to \code{\link[lubridate:stamp]{lubridate::stamp()}} to format the the dates/times passed in \code{useTimeVector} (default = \code{"01-01-1999"})}
}
\value{
dataframe
}
\description{
Fluctuation intensity is one of two components of which the product is the Dynamic Complexity measure.
}
\references{
Haken H, & Schiepek G. (2006). \emph{Synergetik in der Psychologie. Selbstorganisation verstehen und gestalten}. Hogrefe, Göttingen.

Schiepek, G. (2003). A Dynamic Systems Approach to Clinical Case Formulation. \emph{European Journal of Psychological Assessment, 19}, 175-184. https://doi.org/10.1027//1015-5759.19.3.175

Schiepek, G., & Strunk, G. (2010). The identification of critical fluctuations and phase transitions in short term and coarse-grained time series-a method for the real-time monitoring of human change processes. \emph{Biological cybernetics, 102(3)}, 197-207. https://doi.org/10.1007/s00422-009-0362-1
}
\seealso{
Use \code{\link[=dc_win]{dc_win()}} to get the dynamic complexity measure.

Other Dynamic Complexity functions: 
\code{\link{dc_ccp}()},
\code{\link{dc_d}()},
\code{\link{dc_win}()},
\code{\link{plotDC_ccp}()},
\code{\link{plotDC_lvl}()},
\code{\link{plotDC_res}()}
}
\concept{Dynamic Complexity functions}
