#' Plotting with PrettyCols palettes for fill colour ggplot2
#' @param name Name of Palette. Run \code{view_all_palettes(type = "div")} to view
#' options. Must be a diverging palette name.
#' @param direction Sets order of colors. Default palette is 1. If direction is -1,
#' palette color order is reversed
#' @param legend_title Character string specifying legend title. Default `NULL`.
#' @param ... Other arguments passed on to \code{\link[ggplot2]{scale_colour_gradient2}}
#' @return A ggproto object defining a continuous colour scale for use with ggplot2.
#' @examples
#' library(ggplot2)
#' ggplot(data=iris, aes(x=Petal.Width, y=Petal.Length, fill=Petal.Width)) +
#'   geom_col() +
#'   scale_fill_pretty_div("TangerineBlues")
#' @export

scale_fill_pretty_div <- function(name,
                                  direction = 1,
                                  legend_title = NULL, ...) {

  `%notin%` <- Negate(`%in%`)

  palette <- PrettyColsPalettes[[name]]

  if (is.null(palette) || is.numeric(name)) {
    stop("Palette does not exist.")
  }

  if (palette[[3]] != "div") {
    stop("Palette must be a diverging palette.")
  }

  if (direction %notin% c(1, -1)) {
    stop("Direction not valid. Please use 1 for standard palette or -1 for reversed palette.")
  }

  if (direction == 1) {
    low_col = palette[[1]][1]
    high_col = utils::tail(palette[[1]], 1)
  } else {
    low_col = utils::tail(palette[[1]], 1)
    high_col = palette[[1]][1]
  }
  mid_col = palette[[1]][ceiling(length(palette[[1]])/2)]


  if (!is.null(legend_title)) {
    ggplot2::scale_fill_gradient2(name = legend_title,
                                  low = low_col,
                                  mid = mid_col,
                                  high = high_col, ...)
  } else {
    ggplot2::scale_fill_gradient2(low = low_col,
                                  mid = mid_col,
                                  high = high_col, ...)
  }
}
