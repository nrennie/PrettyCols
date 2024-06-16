#' Generates the colour palettes
#'
#' @param palette Name of Palette. Run \code{names(PrettyColsPalettes)} to view options.
#' @param n Number of desired colors. If number of requested colors is beyond the scope of the palette,
#' colors are automatically interpolated. If n is not provided, the length of the palette is used.
#' @param type Either "continuous" or "discrete". Use continuous if you want to automatically
#' interpolate between colors. Default "discrete"
#' @param direction Sets order of colors. Default palette is 1. If direction is -1, palette color order is reversed
#' @return A character vector of hex colour codes.
#' @examples
#' prettycols("Blues")
#' @export

prettycols <- function(palette,
                       n,
                       type = "discrete",
                       direction = 1) {
  `%notin%` <- Negate(`%in%`)

  palette_choice <- PrettyColsPalettes[[palette]]

  if (is.null(palette_choice) || is.numeric(palette)) {
    stop("Palette name does not exist. Use names(PrettyColsPalettes) to find valid palette name.")
  }

  if (missing(n)) {
    n <- length(palette_choice[[1]])
  }

  if (direction %notin% c(1, -1)) {
    stop("Direction not valid. Please use 1 for standard palette or -1 for reversed palette.")
  }

  if (type %notin% c("discrete", "continuous")) {
    stop("Invalid palette type. Must be one of 'discrete' or 'continuous'.")
  }

  if (type == "discrete" && n > length(palette_choice[[1]])) {
    stop("Number of requested colors greater than what discrete palette can offer, use continuous instead.")
  }

  continuous <- if (direction == 1) {
    grDevices::colorRampPalette(palette_choice[[1]])(n)
  } else {
    grDevices::colorRampPalette(rev(palette_choice[[1]]))(n)
  }

  discrete <- if (direction == 1) {
    palette_choice[[1]][1:n]
  } else {
    rev(palette_choice[[1]])[1:n]
  }

  out <- switch(type,
    continuous = continuous,
    discrete = discrete
  )

  structure(out, class = "palette", palette = palette)
}
