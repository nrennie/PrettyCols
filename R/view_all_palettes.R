#' Prints all available colour palettes
#'
#' @param type Type of colour palettes to view. Either all palettes, sequential palettes,
#' diverging palettes, or qualitative palettes. One of c("all", "seq", "div", "qual").
#' Default "all".
#' @examples
#' view_all_palettes(type = "seq")
#' @return A plot of all colour palettes available in the package.
#' @export

view_all_palettes <- function(type = "all") {

  `%notin%` <- Negate(`%in%`)

  if (type %notin% c("all", "seq", "div", "qual")) {
    stop("Invalid 'type'. Must be one of c('all', 'seq', 'div', 'qual').")
  } else {
    if (type == "all") {
      n_all <- length(PrettyColsPalettes)
      n_col <- min(4, floor(sqrt(n_all)))
      n_row <- ceiling(n_all / n_col)
      par(mfrow = c(n_row, n_col))
      purrr::map(.x = names(PrettyColsPalettes), .f = ~print(prettycols(.x)))
      par(mfrow = c(1, 1))
    } else {
      # filter palettes by type
      types <- unlist(lapply(PrettyColsPalettes, `[[`, 3))
      filtered_palettes <- PrettyColsPalettes[unname(which(types == type))]
      n_all <- length(filtered_palettes)
      n_col <- min(3, floor(sqrt(n_all)))
      n_row <- ceiling(n_all / n_col)
      par(mfrow = c(n_row, n_col))
      purrr::map(.x = names(filtered_palettes), .f = ~print(prettycols(.x)))
      par(mfrow = c(1, 1))
    }
  }

}
