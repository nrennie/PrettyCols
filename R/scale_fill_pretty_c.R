#' Plotting with PrettyCols palettes for colour ggplot2
#' @param name Name of Palette. Run \code{names(PrettyColsPalettes)} to view options.
#' @param direction Sets order of colors. Default palette is 1. If direction is -1,
#' palette color order is reversed
#' @param legend_title Character string specifying legend title. Default `NULL`.
#' @param ... Other arguments passed on to \code{\link[ggplot2]{scale_fill_gradientn}}
#' @return A ggproto object defining a continuous fill scale for use with ggplot2.
#' @examples
#' library(ggplot2)
#' ggplot(data=iris, aes(x=Petal.Width, y=Petal.Length, fill=Petal.Width)) +
#'   geom_point(pch = 21) +
#'   scale_fill_pretty_c("Greens")
#' @export

scale_fill_pretty_c <- function(name,
                                direction = 1,
                                legend_title = NULL, ...) {

  `%notin%` <- Negate(`%in%`)

  palette <- PrettyColsPalettes[[name]]

  if (is.null(palette) || is.numeric(name)) {
    stop("Palette does not exist.")
  }

  if (direction %notin% c(1, -1)) {
    stop("Direction not valid. Please use 1 for standard palette or -1 for reversed palette.")
  }

  if (!is.null(legend_title)) {
    ggplot2::scale_fill_gradientn(name = legend_title,
                                  colors = prettycols(name = name, direction = direction), ...)
  } else {
    ggplot2::scale_fill_gradientn(colors = prettycols(name = name, direction = direction), ...)
  }


}
