#' Plotting with PrettyCols palettes for colour ggplot2
#' @param name Name of Palette. Run \code{names(PrettyColsPalettes)} to view options.
#' @param direction Sets order of colors. Default palette is 1. If direction is -1,
#' palette color order is reversed
#' @param legend_title Character string specifying legend title. Default `NULL`.
#' @param ... Other arguments passed on to \code{\link[ggplot2]{discrete_scale}}
#' @return A ggproto object defining a discrete fill scale for use with ggplot2.
#' @examples
#' library(ggplot2)
#' ggplot(data=iris, aes(x=Species, y=Petal.Length, fill=Species)) +
#'   geom_col() +
#'   scale_fill_pretty_d("Relax")
#' @export

scale_fill_pretty_d <- function(name,
                                direction = 1,
                                legend_title = NULL, ...) {
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

  if (!is.null(legend_title)) {
    ggplot2::discrete_scale(name = legend_title,
                            aesthetics = "fill",
                            scale_name = "pretty_d",
                            palette = prettycols_disc(name = name, direction = direction), ...)
  } else {
    ggplot2::discrete_scale(aesthetics = "fill",
                            scale_name = "pretty_d",
                            palette = prettycols_disc(name = name, direction = direction), ...)
  }

}
