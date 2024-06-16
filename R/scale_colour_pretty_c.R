#' Plotting with PrettyCols palettes for colour ggplot2
#' @param palette Name of Palette. Run \code{names(PrettyColsPalettes)} to view options.
#' @param direction Sets order of colors. Default palette is 1. If direction is -1,
#' palette color order is reversed
#' @param legend_title `r lifecycle::badge("deprecated")` Deprecated in favour of `name`.
#' @param ... Other arguments passed on to \code{\link[ggplot2]{scale_colour_gradientn}}
#' @return A ggproto object defining a continuous colour scale for use with ggplot2.
#' @examples
#' library(ggplot2)
#' ggplot(data=mtcars, aes(x=mpg, y=disp, colour=wt)) +
#'   geom_point() +
#'   scale_colour_pretty_c("Greens")
#' @export

scale_colour_pretty_c <- scale_color_pretty_c
