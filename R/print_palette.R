# Function for printing palette
#' @export
#' @importFrom grDevices rgb
#' @importFrom graphics rect par image text

print.palette <- function(x, ...) {
  n <- length(x)
  old <- graphics::par(mar = c(0, 0, 0, 0))
  on.exit(graphics::par(old))
  graphics::image(1:n, 1, as.matrix(1:n), col = x,
        ylab = "", xaxt = "n", yaxt = "n", bty = "n")
  graphics::rect(0, 0.92, n + 1, 1.08,
       col = grDevices::rgb(0, 0, 0, 0.6),
       border = NA)
  graphics::rect(0.5, 0.6, n + 0.5, 1.4,
                 col = NA,
                 lwd = 4,
                 border = "black")
  graphics::text((n + 1) / 2, 1,
       labels = attr(x, "name"),
       cex = 1.5,
       family = "sans",
       col = grDevices::rgb(1, 1, 1, 1))
}
