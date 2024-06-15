#' Plotting with PrettyCols palettes for colour ggplot2
#' @param palette Name of Palette. Run \code{names(PrettyColsPalettes)} to view options.
#' @param direction Sets order of colors. Default palette is 1. If direction is -1,
#' palette color order is reversed
#' @param legend_title `r lifecycle::badge("deprecated")` Deprecated in favour of `name`.
#' @param ... Other arguments passed on to \code{\link[ggplot2]{discrete_scale}}
#' @return A ggproto object defining a discrete fill scale for use with ggplot2.
#' @examples
#' library(ggplot2)
#' ggplot(data = mtcars, aes(x = mpg, y = disp, fill = factor(cyl))) +
#'   geom_point(pch = 21) +
#'   scale_fill_pretty_d("Bright")
#' @export

scale_fill_pretty_d <- function(palette,
                                direction = 1,
                                legend_title = NULL, ...) {
  if (missing(palette)) {
    stop("Please use the 'palette' argument to define which colour palette you want to use.")
  }

  if (!is.null(legend_title)) {
    lifecycle::deprecate_soft(
      when = "1.1.0",
      what = "scale_color_pretty_d(legend_title)",
      details = "Please use `name` to set the legend title instead.")
  }

  prettycols_disc <- function(palette, direction = 1) {
    `%notin%` <- Negate(`%in%`)

    palette_choice <- PrettyColsPalettes[[palette]]

    if (is.null(palette_choice) || is.numeric(palette)) {
      stop("Palette does not exist.")
    }

    if (direction %notin% c(1, -1)) {
      stop("Direction not valid. Please use 1 for standard palette or -1 for reversed palette.")
    }

    function(n) {
      if (direction == 1) {
        palette_choice[[1]][1:n]
      } else {
        rev(palette_choice[[1]])[1:n]
      }
    }
  }

  if (!is.null(legend_title)) {
    ggplot2::discrete_scale(
      name = legend_title,
      aesthetics = "fill",
      palette = prettycols_disc(palette = palette, direction = direction), ...
    )
  } else {
    ggplot2::discrete_scale(
      aesthetics = "fill",
      palette = prettycols_disc(palette = palette, direction = direction), ...
    )
  }
}
