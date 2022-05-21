#' Plotting with PrettyCols palettes for colour ggplot2
#' @param name Name of Palette. Run \code{names(PrettyColsPalettes)} to view options.
#' @param direction Sets order of colors. Default palette is 1. If direction is -1, palette color order is reversed
#' @export

scale_fill_pretty_c <- function(name, direction = 1) {

  `%notin%` <- Negate(`%in%`)

  palette <- PrettyColsPalettes[[name]]

  if (is.null(palette) | is.numeric(name)) {
    stop("Palette does not exist.")
  }

  if (direction %notin% c(1, -1)) {
    stop("Direction not valid. Please use 1 for standard palette or -1 for reversed palette.")
  }

  ggplot2::scale_fill_gradientn(colors = prettycols(name = name, direction = direction))
}