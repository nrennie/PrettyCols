#' Plotting with PrettyCols palettes for colour ggplot2
#' @param palette Name of Palette. Run \code{names(PrettyColsPalettes)} to view options.
#' @param direction Sets order of colors. Default palette is 1. If direction is -1,
#' palette color order is reversed
#' @param legend_title `r lifecycle::badge("deprecated")` Deprecated in favour of `name`.
#' @param ... Other arguments passed on to \code{\link[ggplot2]{scale_fill_gradientn}}
#' @return A ggproto object defining a continuous fill scale for use with ggplot2.
#' @examples
#' library(ggplot2)
#' ggplot(data = mtcars, aes(x = mpg, y = disp, fill = wt)) +
#'   geom_point(pch = 21) +
#'   scale_fill_pretty_c("Greens")
#' @export

scale_fill_pretty_c <- function(palette,
                                direction = 1,
                                legend_title = NULL, ...) {
  if (missing(palette)) {
    stop("Please use the 'palette' argument to define which colour palette you want to use.")
  }

  if (!is.null(legend_title)) {
    lifecycle::deprecate_soft(
      when = "1.1.0",
      what = "scale_fill_pretty_c(legend_title)",
      details = "Please use `name` to set the legend title instead."
    )
  }

  `%notin%` <- Negate(`%in%`)

  palette_choice <- PrettyColsPalettes[[palette]]

  if (is.null(palette_choice) || is.numeric(palette)) {
    stop("Palette does not exist.")
  }

  if (direction %notin% c(1, -1)) {
    stop("Direction not valid. Please use 1 for standard palette or -1 for reversed palette.")
  }

  if (!is.null(legend_title)) {
    ggplot2::scale_fill_gradientn(
      name = legend_title,
      colors = prettycols(palette = palette, direction = direction), ...
    )
  } else {
    ggplot2::scale_fill_gradientn(colors = prettycols(palette = palette, direction = direction), ...)
  }
}
