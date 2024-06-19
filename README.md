<!-- badges: start -->
  [![R-CMD-check](https://github.com/nrennie/PrettyCols/workflows/R-CMD-check/badge.svg)](https://github.com/nrennie/PrettyCols/actions)
  [![codecov](https://codecov.io/gh/nrennie/PrettyCols/branch/main/graph/badge.svg)](https://app.codecov.io/gh/nrennie/PrettyCols?branch=main)
  [![CRAN_Status_Badge](https://www.r-pkg.org/badges/version/PrettyCols)](https://cran.r-project.org/package=PrettyCols)

<!-- badges: end -->

# PrettyCols <img src="man/figures/logo.png" align="right" width="120" />

{PrettyCols} is an R package containing aesthetically pleasing colour palettes. 

The structure of the package is based on code from the [{PNWColors}](https://github.com/jakelawlor/PNWColors),  [{wesanderson}](https://github.com/karthik/wesanderson), and [{MetBrewer}](https://github.com/BlakeRMills/MetBrewer) packages. 

## Installation

{PrettyCols} is available on CRAN. Install using:
``` r
install.packages("PrettyCols")
```
or install the development version from GitHub:
``` r
remotes::install_github("nrennie/PrettyCols")
```

See [nrennie.rbind.io/PrettyCols](https://nrennie.rbind.io/PrettyCols/) for full documentation.

If you have a suggestion of an additional feature, or find a bug, please file an issue on the [GitHub repository](https://github.com/nrennie/ggflowchart/issues).

A Python implementation of this package can be found at [github.com/nrennie/PrettyPyCols](https://github.com/nrennie/PrettyPyCols).

## Contributor guidelines

If you'd like to contribute to {ggflowchart}, I'd welcome your help. If you're making a PR, please follow the guidelines below, to make the collaboration easier:

- You have updated the NEWS and version number in DESCRIPTION.
- You have checked that R CMD check passes with no ERRORs or WARNINGs. If there is a NOTE - please outline what it is in the PR.
- You have checked that `lintr::lint_package()` passes.
- You have checked the list of packages in Imports is still in alphabetical order to enable better tracking of dependencies as the package grows.
- You have not used the base R `|>` pipe (we're not quite ready to specify R 4.1 or higher as a dependency yet!).
- If this is a feature request PR (not a bug fix) please make sure it relates to an issue that has not been assigned to someone else (and tag the issue in the PR description).

If these checks fail, and there is no response from the PR author for 1 month, the PR will be automatically closed.

