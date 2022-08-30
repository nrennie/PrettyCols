#' Plotting with PrettyCols palettes for colour ggplot2
#' @param name Name of Palette. Run \code{names(PrettyColsPalettes)} to view options.
#' @param direction Sets order of colors. Default palette is 1. If direction is -1,
#' palette color order is reversed
#' @param ... Other arguments passed on to \code{\link[ggplot2]{discrete_scale}}
#' @return A ggproto object defining a discrete colour scale for use with ggplot2.
#' @examples
#' library(ggplot2)
#' ggplot(data=iris, aes(x=Species, y=Petal.Length, color=Species)) +
#'   geom_jitter() +
#'   scale_color_pretty_d("Relax")
#' @export

scale_color_pretty_d <- function(name, direction = 1, ...) {
  prettycols_disc <- function(name, direction = 1) {

    `%notin%` <- Negate(`%in%`)

    palette <- PrettyColsPalettes[[name]]

    if (is.null(palette) || is.numeric(name)) {
      stop("Palette does not exist.")
    }

    if (direction %notin% c(1, -1)) {
      stop("Direction not valid. Please use 1 for standard palette or -1 for reversed palette.")
    }

    function(n) if (direction == 1) {
      palette[[1]][1:n]
    } else {
      rev(palette[[1]])[1:n]
    }

  }

  ggplot2::discrete_scale(aesthetics = "colour",
                          scale_name = "pretty_d",
                          palette = prettycols_disc(name = name, direction = direction), ...)
}
