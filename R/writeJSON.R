#' Function to write R object to JSON
#' @param file File name to save file as
#' @noRd

writeJSON <- function(file = "PrettyCols.js") {
  name_labels <- c("colors", "order", "type", "colorblindFriendly") # nolint
  purrr::map(
    .x = PrettyColsPalettes,
    .f = ~ setNames(.x, name_labels)
  ) |>
    jsonlite::write_json(
      path = file,
      pretty = TRUE, auto_unbox = TRUE
    )
  js_txt <- readLines(file)
  js_txt[1] <- "PrettyCols={"
  writeLines(js_txt, con = file)
}
