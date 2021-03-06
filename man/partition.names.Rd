% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/split.R
\name{partition.names}
\alias{partition.names}
\title{Split a set of names into two subsets based on a rating}
\usage{
partition.names(split, discard = 0, subset = filter.names())
}
\arguments{
\item{split}{The name of the rating on which the split
should be performed}

\item{discard}{The percentage of names too close to the median
which should be discarded (default: 0, i.e. keep
all names)}

\item{subset}{An optional subset on which the split should be
done. If this is left out, the split will
be created on all names.}
}
\value{
An S3 object of class "names.split". The individual
        groups can be retrieved using the [] with the first index
        1 for the first group or 2 for the second group.
}
\description{
Creates a median split based on a given rating. In addition a
percentage of names to close to the median can be discarded.
Also allows further splitting already selected subsets of names.
}
\examples{

# Split all names along the rating "Sex"
s <- partition.names(Sex)

# Female names
s[1]
# Male names
s[2]

# Same as before, but remove ambigous names (20\%)
s <- partition.names(Sex, discard=0.2)

# Female names
s[1]
# Male names
s[2]

# First filter on Competence, then split according to Sex
n <- filter.names(Competence >= 0.5)
s <- partition.names(Sex, discard=0.2, subset=n)

# Female names
s[1]
# Male names
s[2]

}
