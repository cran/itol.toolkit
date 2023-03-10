% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/learn.R
\name{learn_profile}
\alias{learn_profile}
\title{Learn profile}
\usage{
learn_profile(lines, sep)
}
\arguments{
\item{lines}{a vector of character strings from template file.}

\item{sep}{a character specifying the separator.}
}
\value{
a list of profile parameters containing

\item{name}{a character specifying label, which is used in the legend
table}

\item{color}{dataset color in the legend (use hexadecimal, RGB or
RGBA notation; if using RGB/RGBA, COMMA cannot be used as SEPARATOR)}
}
\description{
learn profile paramters as list
}
\examples{
tree <- system.file("extdata",
                    "tree_of_itol_templates.tree",
                    package = "itol.toolkit")
df_frequence <- data.table::fread(system.file("extdata",
                                              "templates_frequence.txt",
                                              package = "itol.toolkit"))
## create unit
unit <- create_unit(data = df_frequence,
                    key = "Quickstart",
                    type = "DATASET_HEATMAP",
                    tree = tree)
## write unit
file <- tempfile()
write_unit(unit,file)
## Learn legend parameters
lines <- line_clean(file=file)
sep = learn_separator(file = file)
learn_profile(lines = lines, sep = sep)
}
