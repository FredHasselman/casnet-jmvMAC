% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fd.R
\name{fd_boxcount2D}
\alias{fd_boxcount2D}
\title{2D Boxcount for 1D signal}
\usage{
fd_boxcount2D(
  y = NA,
  unitSquare = TRUE,
  image2D = NA,
  resolution = 1,
  removeTrend = FALSE,
  polyOrder = 1,
  standardise = c("none", "mean.sd", "median.mad")[1],
  adjustSumOrder = FALSE,
  scaleMin = 0,
  scaleMax = floor(log2(NROW(y) * resolution)),
  scaleS = NA,
  minData = 2^(scaleMin + 1),
  maxData = 2^(scaleMax - 1),
  doPlot = FALSE,
  returnPlot = FALSE,
  returnPLAW = FALSE,
  returnInfo = FALSE,
  returnLocalScaling = FALSE,
  silent = FALSE,
  noTitle = FALSE,
  tsName = "y"
)
}
\arguments{
\item{y}{A numeric vector or time series object.}

\item{unitSquare}{Create unit square image of \code{y}? This is required for estimating FD of time series (default = \code{TRUE})}

\item{image2D}{A matrix representing a 2D image, argument \code{y} and \code{unitSquare} will be ignored (default = \code{NA})}

\item{resolution}{The resolution used to embed the timeseries in 2D, a factor by which the dimensions the matrix will be multiplied (default = \code{1})}

\item{removeTrend}{If \code{TRUE}, will call \link[casnet]{ts_detrend} on \code{y} (default = \code{FALSE})}

\item{polyOrder}{Order of polynomial trend to remove if \verb{removeTrend = }TRUE``}

\item{standardise}{Standardise \code{y} using \code{\link[casnet:ts_standardise]{casnet::ts_standardise()}} with \code{adjustN = FALSE} (default = \code{none})}

\item{adjustSumOrder}{Adjust the order of the time series (by summation or differencing), based on the global scaling exponent, see e.g. \url{https://www.frontiersin.org/files/Articles/23948/fphys-03-00141-r2/image_m/fphys-03-00141-t001.jpg}{Ihlen (2012)} (default = `FALSE``)}

\item{scaleMin}{Minimium scale value (as \code{2^scale}) to use (default = \code{0})}

\item{scaleMax}{Maximum scale value (as \code{2^scale}) to use (default = \code{max} of \code{log2(nrows)} and \code{log2(ncols)})}

\item{scaleS}{If not \code{NA}, pass a numeric vector listing the scales (as a power of \code{2}) on which to evaluate the boxcount. Arguments \code{scaleMax}, \code{scaleMin}, and \code{scaleResolution} will be ignored (default = \code{NA})}

\item{minData}{Minimum number of time/data points inside a box for it to be included in the slope estimation (default = \code{2^scaleMin})}

\item{maxData}{Maximum number of time/data points inside a box for it to be included in the slope estimation (default = \code{2^scaleMax})}

\item{doPlot}{Return the log-log scale versus bulk plot with linear fit (default = \code{TRUE}).}

\item{returnPlot}{Return ggplot2 object (default = \code{FALSE})}

\item{returnPLAW}{Return the power law data (default = \code{FALSE})}

\item{returnInfo}{Return all the data used in DFA (default = \code{FALSE})}

\item{returnLocalScaling}{Return estimates of FD for each scale}

\item{silent}{Silent-ish mode (default = \code{TRUE})}

\item{noTitle}{Do not generate a title (only the subtitle)}

\item{tsName}{Name of y added as a subtitle to the plot (default = \code{y})}
}
\value{
The boxcount fractal dimension and the 'local' boxcount fractal dimension
}
\description{
2D Boxcount for 1D signal
}
\note{
This function was inspired by the \code{Matlab} function \code{boxcount.m} \href{http://www.fast.u-psud.fr/~moisy/ml/boxcount/html/demo.html}{written by F. Moisy}. \verb{Fred Hasselman} adapted the function for \code{R} for the purpose of the unit square boxcount analysis for 1D time series. The original Matlab toolbox has more options and contains more functions (e.g. \verb{1D} and \verb{3D} boxcount).
}
\examples{

\donttest{fd_boxcount2D(y = rnorm(100))}


}
