% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/learn.R
\name{learn_subdf}
\alias{learn_subdf}
\title{Learn sub data frame}
\usage{
learn_subdf(lines, type, sep, dataset_name = NULL, field_labels = NULL)
}
\arguments{
\item{lines}{a vector of character strings from template file.}

\item{type}{template type}

\item{sep}{a character specifying the separator.}

\item{dataset_name}{label in template file}

\item{field_labels}{sample ids for binary, heatmap, and other multi-column value templates}
}
\value{
a data frame containing the data learned from template file
}
\description{
Learn sub data frame from template file
}
