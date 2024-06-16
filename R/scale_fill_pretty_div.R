#' Plotting with PrettyCols palettes for fill colour ggplot2
#' @param palette Name of Palette. Run \code{view_all_palettes(type = "div")} to view
#' options. Must be a diverging palette name.
#' @param direction Sets order of colors. Default palette is 1. If direction is -1,
#' palette color order is reversed
#' @param legend_title `r lifecycle::badge("deprecated")` Deprecated in favour of `name`.
#' @param ... Other arguments passed on to \code{\link[ggplot2]{scale_colour_gradient2}}
#' @return A ggproto object defining a continuous colour scale for use with ggplot2.
#' @examples
#' library(ggplot2)
#' ggplot(data = mtcars, aes(x = mpg, y = disp, fill = wt)) +
#'   geom_point(pch = 21) +
#'   scale_fill_pretty_div("PurpleYellows", midpoint = mean(mtcars$wt))
#' @export

scale_fill_pretty_div <- function(palette,
                                  direction = 1,
                                  legend_title = NULL, ...) {
  if (missing(palette)) {
    stop("Please use the 'palette' argument to define which colour palette you want to use.")
  }

  if (!is.null(legend_title)) {
    lifecycle::deprecate_soft(
      when = "1.1.0",
      what = "scale_fill_pretty_div(legend_title)",
      details = "Please use `name` to set the legend title instead."
    )
  }

  `%notin%` <- Negate(`%in%`)

  palette_choice <- PrettyColsPalettes[[palette]]

  if (is.null(palette_choice) || is.numeric(palette)) {
    stop("Palette does not exist.")
  }

  if (palette_choice[[3]] != "div") {
    stop("Palette must be a diverging palette.")
  }

  if (direction %notin% c(1, -1)) {
    stop("Direction not valid. Please use 1 for standard palette or -1 for reversed palette.")
  }

  if (direction == 1) {
    low_col <- palette_choice[[1]][1]
    high_col <- utils::tail(palette_choice[[1]], 1)
  } else {
    low_col <- utils::tail(palette_choice[[1]], 1)
    high_col <- palette_choice[[1]][1]
  }
  mid_col <- palette_choice[[1]][ceiling(length(palette_choice[[1]]) / 2)]


  if (!is.null(legend_title)) {
    ggplot2::scale_fill_gradient2(
      name = legend_title,
      low = low_col,
      mid = mid_col,
      high = high_col, ...
    )
  } else {
    ggplot2::scale_fill_gradient2(
      low = low_col,
      mid = mid_col,
      high = high_col, ...
    )
  }
}
