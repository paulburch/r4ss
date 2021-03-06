% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/SSgetMCMC.R
\name{SSgetMCMC}
\alias{SSgetMCMC}
\title{Read MCMC output.}
\usage{
SSgetMCMC(dir = NULL, verbose = TRUE, writecsv = FALSE,
  csv1 = "keyposteriors.csv", csv2 = "nuisanceposteriors.csv",
  keystrings = c("NatM", "R0", "steep", "RecrDev_2008", "Q_extraSD"),
  nuisancestrings = c("Objective_function", "SSB_", "InitAge", "RecrDev"),
  modelnames = "default", burnin = 0, thin = 1)
}
\arguments{
\item{dir}{A string (or vector of strings) of the directory (or directories)
with MCMC output.}

\item{verbose}{TRUE/FALSE switch to get more or less information about the
progress of the function.}

\item{writecsv}{Write key parameters and certainty nuisance quantities to a
CSV file.}

\item{csv1}{First CSV file for key parameters.}

\item{csv2}{Second CSV file for nuisance quantities.}

\item{keystrings}{Vector of strings that partially match parameter names to
write to the file csv1. This file intended to feed into
\code{\link{mcmc.out}}.}

\item{nuisancestrings}{Vector of strings that partially match derived
quantity names to write to the file csv2. This file intended to feed into
\code{\link{mcmc.nuisance}}.}

\item{modelnames}{Either "default" or a vector of names to use in naming
elements of list that is output by the function. Default is "model1",
"model2", etc.}

\item{burnin}{Optional burn-in value to apply on top of the option in the
starter file.}

\item{thin}{Optional thinning value to apply on top of the option in the
starter file and in the \code{-mcsave} runtime command.}
}
\description{
Reads the MCMC output (in the posteriors.sso and derived_posteriors.sso
files) from one or more models.
}
\seealso{
\code{\link{mcmc.out}}, \code{\link{mcmc.nuisance}},
\code{\link{SSplotPars}}
}
\author{
Ian Taylor
}
