% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fd.R
\name{fd_dfa}
\alias{fd_dfa}
\title{Detrended Fluctuation Analysis (DFA)}
\usage{
fd_dfa(
  y,
  fs = NULL,
  removeTrend = c("no", "poly", "adaptive", "bridge")[2],
  polyOrder = 1,
  standardise = c("none", "mean.sd", "median.mad")[2],
  adjustSumOrder = FALSE,
  scaleMin = 2,
  scaleMax = floor(log2(NROW(y)/2)),
  scaleResolution = (scaleMax - scaleMin),
  scaleS = NA,
  overlap = 0,
  minData = 4,
  doPlot = FALSE,
  returnPlot = FALSE,
  returnPLAW = FALSE,
  returnInfo = FALSE,
  silent = FALSE,
  noTitle = FALSE,
  tsName = "y"
)
}
\arguments{
\item{y}{A numeric vector or time series object.}

\item{fs}{Sample rate}

\item{removeTrend}{Method to use for detrending (default = "poly")}

\item{polyOrder}{Order of polynomial trend to remove if \code{removeTrend = "poly"}}

\item{standardise}{Standardise by the series using \code{\link[casnet:ts_standardise]{casnet::ts_standardise()}} with \code{adjustN = FALSE} (default = "mean.sd")}

\item{adjustSumOrder}{Adjust the time series (summation or differencing), based on the global scaling exponent, see e.g. \url{https://www.frontiersin.org/files/Articles/23948/fphys-03-00141-r2/image_m/fphys-03-00141-t001.jpg}{Ihlen (2012)} (default = \code{FALSE})}

\item{scaleMin}{Minimium scale (as a power of 2) to use}

\item{scaleMax}{Maximum scale (as a power of 2) to use}

\item{scaleResolution}{The scales at which detrended fluctuation will be evaluated are calculatd as: \code{(scaleMax-scaleMin)/scaleResolution}. The default value yields no resolution of scales: \code{(scaleMax-scaleMin)}. Common values}

\item{scaleS}{If not \code{NA}, it should be a numeric vector listing the scales on which to evaluate the detrended fluctuations. Arguments \verb{scaleMax, scaleMin, scaleResolution} will be ignored.}

\item{overlap}{Turn DFA into a sliding window analysis. A number in \verb{[0 ... 1]} representing the amount of 'bin overlap'. If \code{length(y) = 1024} and overlap is \code{.5}, a scale of \code{4} will be considered a sliding window of size \code{4} with stepsize \code{floor(.5 * 4) = 2}. The detrended fluctuation in   For scale \code{128} this will be  (default = \code{0})}

\item{minData}{Minimum number of data points in a bin needed to calculate detrended fluctuation}

\item{doPlot}{Return the log-log scale versus fluctuation plot with linear fit (default = \code{TRUE}).}

\item{returnPlot}{Return ggplot2 object (default = \code{FALSE})}

\item{returnPLAW}{Return the power law data (default = \code{FALSE})}

\item{returnInfo}{Return all the data used in DFA (default = \code{FALSE})}

\item{silent}{Silent-ish mode}

\item{noTitle}{Do not generate a title (only the subtitle)}

\item{tsName}{Name of y added as a subtitle to the plot}
}
\value{
Estimate of Hurst exponent (slope of \code{log(bin)} vs. \verb{log(RMSE))} and an FD estimate based on Hasselman (2013)
A list object containing:
\itemize{
\item A data matrix \code{PLAW} with columns \code{freq.norm}, \code{size} and \code{bulk}.
\item Estimate of scaling exponent \code{sap} based on a fit over the standard range (\code{fullRange}), or on a user defined range \code{fitRange}.
\item Estimate of the the Fractal Dimension (\code{FD}) using conversion formula's reported in Hasselman(2013).
\item Information output by various functions.
}
}
\description{
fd_dfa
}
\references{
Hasselman, F. (2013). When the blind curve is finite: dimension estimation and model inference based on empirical waveforms. Frontiers in Physiology, 4, 75. https://doi.org/10.3389/fphys.2013.00075
}
\seealso{
Other Fluctuation Analyses: 
\code{\link{fd_RR}()},
\code{\link{fd_allan}()},
\code{\link{fd_mfdfa}()},
\code{\link{fd_psd}()},
\code{\link{fd_sda}()},
\code{\link{fd_sev}()}
}
\author{
Fred Hasselman
}
\concept{Fluctuation Analyses}
