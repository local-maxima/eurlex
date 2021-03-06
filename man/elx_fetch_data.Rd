% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/elx_fetch_data.R
\name{elx_fetch_data}
\alias{elx_fetch_data}
\title{Retrieve additional data on EU documents}
\usage{
elx_fetch_data(
  url,
  type = c("title", "text", "ids"),
  language_1 = "en",
  language_2 = "fr",
  language_3 = "de"
)
}
\arguments{
\item{url}{A valid url, preferably to a Cellar work obtained through `elx_run_query`.}

\item{type}{The type of data to be retrieved}

\item{language_1}{The priority language in which the data will be attempted to be retrieved, in ISO 639 2-char code}

\item{language_2}{If data not available in `language_1`, try `language_2`}

\item{language_3}{If data not available in `language_2`, try `language_3`}
}
\description{
Wraps httr::GET with pre-specified headers to retrieve data.
}
\examples{
\donttest{
elx_fetch_data(url = ".../resource/cellar/3f7ccca4-478c-4a95-8778-df4243e30d0e", type = "text")
elx_fetch_data(url = "http://publications.europa.eu/resource/celex/32014R0001", type = "title")
}
}
