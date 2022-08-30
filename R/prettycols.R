#' Generates the colour palettes
#'
#' @param name Name of Palette. Run \code{names(PrettyColsPalettes)} to view options.
#' @param n Number of desired colors. If number of requested colors is beyond the scope of the palette,
#' colors are automatically interpolated. If n is not provided, the length of the palette is used.
#' @param type Either "continuous" or "discrete". Use continuous if you want to automatically
#' interpolate between colors. Default "discrete"
#' @param direction Sets order of colors. Default palette is 1. If direction is -1, palette color order is reversed
#' @return A character vector of hex colour codes.
#' @examples
#' prettycols("Blues")
#' @export

prettycols <- function(name,
                       n,
                       type = "discrete",
                       direction = 1) {

  `%notin%` <- Negate(`%in%`)

  palette <- PrettyColsPalettes[[name]]

  if (is.null(palette) || is.numeric(name)) {
    stop("Palette name does not exist. Use names(PrettyColsPalettes) to find valid palette name.")
  }

  if (missing(n)) {
    n <- length(palette[[1]])
  }

  if (direction %notin% c(1, -1)) {
    stop("Direction not valid. Please use 1 for standard palette or -1 for reversed palette.")
  }

  if (type == "discrete" && n > length(palette[[1]])) {
    stop("Number of requested colors greater than what discrete palette can offer, use continuous instead.")
  }

  continuous <- if (direction == 1) {
    grDevices::colorRampPalette(palette[[1]])(n)
    } else {
      grDevices::colorRampPalette(rev(palette[[1]]))(n)
      }

  discrete <- if (direction == 1) {
    palette[[1]][1:n]
    } else {
      rev(palette[[1]])[1:n]
      }

  out <- switch(type,
                continuous = continuous,
                discrete = discrete
  )

  structure(out, class = "palette", name = name)

}
