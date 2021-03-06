% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cor-tbl.R
\name{cor_tbl}
\alias{cor_tbl}
\title{Create a cor_tbl object}
\usage{
cor_tbl(corr, p.value = NULL, extra.mat = list(), type = "full",
  show.diag = TRUE, row.names = NULL, col.names = NULL,
  cluster = FALSE, ...)
}
\arguments{
\item{corr}{correlation matrix.}

\item{p.value}{significance value matrix of correaltion.}

\item{extra.mat}{any other matrix-like data with same dimmsion as \code{x}.}

\item{type}{a string, "full" (default), "upper" or "lower", display full,
lower triangular or upper triangular matrix.}

\item{show.diag}{a logical value indicating whether keep the diagonal.}

\item{row.names, col.names}{row/column names of correlation matrix.}

\item{cluster}{a logical value indicating whether reorder the correlation matrix
by clustering, default is FALSE.}

\item{...}{extra params passing to \code{\link[ggcor]{cor_tbl}}.}
}
\value{
a cor_tbl object.
}
\description{
Functions to create cor_tbl object from correlation matrix.
}
\details{
\code{cluster = TRUE} just supports for symmetric correlation matrix.
}
\examples{
cor_tbl(cor(mtcars))
corr <- correlate(mtcars, cor.test = TRUE)

## with p value
cor_tbl(corr$r, corr$p.value)

## reorder correlation matrix
cor_tbl(corr$r, corr$p.value, cluster = TRUE)

## exclude upper or lower
### exclude lower
cor_tbl(corr$r, corr$p.value, type = "upper")
### exclude upper
cor_tbl(corr$r, corr$p.value, type = "lower", show.diag = FALSE)

## add extra matrix data
m <- matrix(rnorm(11*11), nrow = 11)
cor_tbl(corr$r, corr$p.value, extra.mat = list(m = m))
}
\author{
Houyun Huang, Lei Zhou, Jian Chen, Taiyun Wei
}
