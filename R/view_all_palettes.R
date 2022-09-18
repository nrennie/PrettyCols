#' Prints all available colour palettes
#'
#' @param type Type of colour palettes to view. Either all palettes, sequential palettes,
#' diverging palettes, or qualitative palettes. Types must be at least one of c("all", "seq", "div", "qual").
#' Default "all".
#' @param colourblind_friendly Boolean whether or not to return only colourblind friendly
#' palettes. Default `FALSE`.
#' @examples
#' view_all_palettes(type = "seq")
#' view_all_palettes(type = c("seq", "div"))
#' view_all_palettes(type = "div", colourblind_friendly = TRUE)
#' @return A plot of all colour palettes available in the package.
#' @export

view_all_palettes <- function(type = "all",
                              colourblind_friendly = FALSE) {

  `%notin%` <- Negate(`%in%`)

  if (any(type %notin% c("all", "seq", "div", "qual"))) {
    stop("Invalid 'type'. Must be at least one of c('all', 'seq', 'div', 'qual').")
  } else {
    if (any(type %in% "all")) {
      if (colourblind_friendly == TRUE) {
        cbf <- unlist(lapply(PrettyColsPalettes, `[[`, 4))
        to_print <- PrettyColsPalettes[unname(which(cbf == TRUE))]
      } else {
        to_print <- PrettyColsPalettes
      }
      n_all <- length(to_print)
      n_col <- min(4, floor(sqrt(n_all)))
      n_row <- ceiling(n_all / n_col)
      par(mfrow = c(n_row, n_col))
      purrr::map(.x = names(to_print), .f = ~print(prettycols(.x)))
      par(mfrow = c(1, 1))
    } else {
      if (colourblind_friendly == TRUE) {
        cbf <- unlist(lapply(PrettyColsPalettes, `[[`, 4))
        to_print <- PrettyColsPalettes[unname(which(cbf == TRUE))]
      } else {
        to_print <- PrettyColsPalettes
      }
      # filter palettes by type
      types <- unlist(lapply(to_print, `[[`, 3))
      filtered_palettes <- to_print[unname(which(types %in% type))]
      n_all <- length(filtered_palettes)
      n_col <- min(3, floor(sqrt(n_all)))
      n_row <- ceiling(n_all / n_col)
      par(mfrow = c(n_row, n_col))
      purrr::map(.x = names(filtered_palettes), .f = ~print(prettycols(.x)))
      par(mfrow = c(1, 1))
    }
  }

}
