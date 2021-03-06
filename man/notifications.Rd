% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/notifications.R
\name{notifications}
\alias{notifications}
\title{Get notifications}
\usage{
notifications(parse = TRUE, ...)
}
\arguments{
\item{parse}{(logical) Attempt to parse to data.frame's if possible. Default: \code{TRUE}}

\item{...}{Curl options passed on to \code{\link[httr]{GET}} or \code{\link[httr]{POST}}}
}
\value{
either a data.frame or a list
}
\description{
Get notifications
}
\examples{
\dontrun{
notifications()
}
}

