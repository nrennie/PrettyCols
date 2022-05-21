#' Complete list of palettes.
#'
#' Use names(PrettyColsPalettes) to return all palette names.
#'
#' @export
PrettyColsPalettes <- list(
  # sequential palettes
  Blues = list(c("#436f85", "#4c7d96", "#548ba7", "#6497b1", "#75a2ba", "#86aec2", "#97b9cb"),
                    c(1, 2, 3, 4, 5, 6, 7),
                    "seq"),
  Purples = list(c("#432263", "#502876", "#5d2f89", "#6a359c", "#773baf", "#8444c0", "#9057c6"),
                       c(1, 2, 3, 4, 5, 6, 7),
                       "seq"),
  Tangerines = list(c("#de7a00", "#F28500", "#FF9B21", "#FFB04F", "#FFC47D", "#ffd6a3", "#9057c6"),
                    c(1, 2, 3, 4, 5, 6, 7),
                    "seq"),
  Greens = list(c("#416322", "#4e7628", "#5a892f", "#679c35", "#74af3b", "#80c044", "#8dc657"),
                c(1, 2, 3, 4, 5, 6, 7),
                "seq"),
  Pinks = list(c("#860a4d", "#9e0c5b", "#b50e68", "#cd1076", "#e51284", "#ee2290", "#f03a9c"),
               c(1, 2, 3, 4, 5, 6, 7),
               "seq"),
  # diverging palettes
  PurpleGreens = list(c("#420f75", "#7640a9", "#ad72d6", "#e7a8fb", "#f5f5f5", "#99ce64", "#659a32", "#326812", "#033800"),
                      c(1, 2, 3, 4, 5, 6, 7, 8, 9),
                      "div"),
  PinkGreens = list(c("#7f0038", "#c31e6e", "#ef5faf", "#fcaade", "#f5f5f5", "#99ce64", "#659a32", "#326812", "#033800"),
                      c(1, 2, 3, 4, 5, 6, 7, 8, 9),
                      "div"),
  TangerineBlues = list(c("#552000", "#8a4d00", "#c17d17", "#f8b150", "#f5f5f5", "#93c6e1", "#5f93ac", "#2e627a", "#00344a"),
                      c(1, 2, 3, 4, 5, 6, 7, 8, 9),
                      "div"),
  PurpleTangerines = list(c("#420f75", "#7640a9", "#ad72d6", "#e7a8fb", "#f5f5f5", "#f8b150", "#c17d17", "#8a4d00", "#552000"),
                      c(1, 2, 3, 4, 5, 6, 7, 8, 9),
                      "div"),
  PurplePinks = list(c("#420f75", "#7640a9", "#ad72d6", "#e7a8fb", "#f5f5f5", "#fcaade", "#ef5faf", "#c31e6e", "#7f0038"),
                     c(1, 2, 3, 4, 5, 6, 7, 8, 9),
                     "div"),
  # qualitative palettes
  Bold = list(c("#6497b1", "#432263", "#de7a00", "#679c35", "#cd1076"),
                 c(1, 2, 3, 4, 5),
                 "qual"),
  Dark = list(c("#436f85", "#6a359c", "#FFB04F", "#416322", "#860a4d"),
              c(1, 2, 3, 4, 5),
              "qual"),
  Light = list(c("#97b9cb", "#9057c6", "#9057c6", "#8dc657", "#f03a9c"),
              c(1, 2, 3, 4, 5),
              "qual")
  )
