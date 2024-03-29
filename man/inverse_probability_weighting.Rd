% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ipw.R
\name{inverse_probability_weighting}
\alias{inverse_probability_weighting}
\title{Inverse Probability Weighting}
\usage{
inverse_probability_weighting(
  numerator = c("stabilized", "unstabilized"),
  identifier,
  baseline,
  covariates,
  treatment,
  include_censor = FALSE,
  censor,
  obsdata
)
}
\arguments{
\item{numerator}{To choose between stabilized and unstabilized weights.}

\item{identifier}{Name of the column of the unique identifier.}

\item{baseline}{Name of the baseline covariates.}

\item{covariates}{Name of the time-varying covariates.}

\item{treatment}{Name of the time-varying treatment.}

\item{include_censor}{Logical value TRUE/FALSE to include or not a censoring variable.}

\item{censor}{Name of the censoring variable.}

\item{obsdata}{Observed data in wide format.}
}
\value{
Inverse Probability Weights (Stabilized and Unstabilized) with and without censoring.
}
\description{
Compute stabilized and unstabilized weights, with or without censoring.
}
\examples{
obsdata = gendata(n = 1000, format = "wide",total_followup = 3, seed = 945)
baseline_var <- c("age","sex")
covariates <- list(c("hyper2011", "bmi2011"),
c("hyper2012", "bmi2012"),c("hyper2013", "bmi2013"))
treatment_var <- c("statins2011","statins2012","statins2013")
stabilized_weights = inverse_probability_weighting(numerator = "stabilized",
identifier = "id", covariates = covariates, treatment = treatment_var,
baseline = baseline_var, obsdata = obsdata)
}
\author{
Awa Diop, Denis Talbot
}
