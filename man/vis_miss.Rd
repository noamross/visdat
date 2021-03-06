% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/vis_miss.R
\name{vis_miss}
\alias{vis_miss}
\title{Visualise a data.frame to display missingness.}
\usage{
vis_miss(x, cluster = FALSE, sort_miss = FALSE, show_perc = TRUE,
  show_perc_col = TRUE, large_data_size = 9e+05, warn_large_data = TRUE)
}
\arguments{
\item{x}{a data.frame}

\item{cluster}{logical. TRUE specifies that you want to use hierarchical
clustering (mcquitty method) to arrange rows according to missingness.
FALSE specifies that you want to leave it as is.}

\item{sort_miss}{logical. TRUE arranges the columns in order of missingness}

\item{show_perc}{logical. TRUE now adds in the \% of missing/complete data
in the whole dataset into the legend. Default value is TRUE.}

\item{show_perc_col}{logical. TRUE adds in the \% missing data in a given
column into the x axis. Can be disabled with FALSE}

\item{large_data_size}{integer default is 900000, this can be changed.}

\item{warn_large_data}{logical default is TRUE}
}
\value{
\code{ggplot2} object displaying the position of missing values in the
dataframe, and the percentage of values missing and present.
}
\description{
\code{vis_miss} provides an at-a-glance ggplot of the missingness inside a
dataframe, colouring cells according to missingness, where black indicates
a missing cell and grey indicates a present cell. As it returns a ggplot
object, it is very easy to customize and change labels.
}
\examples{

vis_miss(airquality)

vis_miss(airquality, cluster = TRUE)

vis_miss(airquality, sort_miss = TRUE)

}
\seealso{
\code{\link[=vis_dat]{vis_dat()}}
}
