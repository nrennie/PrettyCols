#' Find complementary color of a hex code
#'
#' @param hex Hex code given as a string
#' @return c_col hex code of complementary color
#'
#' @export

complementary_color <- function(hex) {
  # convert to HSL
  hsl_col <- plotwidgets::col2hsl(hex)
  # Add 180 degrees to hue
  hsl_new <- hsl_col
  hsl_new[1, 1] <- (hsl_new[1, 1] + 180) %% 360
  # Convert back to hex
  c_col <- plotwidgets::hsl2col(hsl_new)
  return(c_col)
}
