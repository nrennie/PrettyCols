#' Returns a data frame of colorblind friendly colour palettes
#'
#' @param palettes List of palettes. Default PrettyColsPalettes.
#' @examples
#' colorblind_friendly()
#' @return A data frame with two columns giving names and types of colourblind
#' friendly palettes.
#' @export

colorblind_friendly <- function(palettes = PrettyColsPalettes) {
  cbf <- unlist(lapply(palettes, `[[`, 4))
  cbf_palettes <- palettes[unname(which(cbf == TRUE))]
  cbf_palettes_df <- data.frame(name = names(cbf_palettes),
                                type = unname(unlist(lapply(cbf_palettes, `[[`, 3))))
  return(cbf_palettes_df)
}
