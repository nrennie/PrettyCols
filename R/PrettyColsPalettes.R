#' Complete list of palettes.
#'
#' Use names(PrettyColsPalettes) to return all palette names.
#'
#' @export
PrettyColsPalettes <- list(
  # sequential palettes
  Blues = list(
    c("#436f85", "#4c7d96", "#548ba7", "#6497b1", "#75a2ba", "#86aec2", "#97b9cb"),
    c(1, 2, 3, 4, 5, 6, 7),
    "seq",
    TRUE
  ),
  Purples = list(
    c("#432263", "#502876", "#5d2f89", "#6a359c", "#773baf", "#8444c0", "#9057c6"),
    c(1, 2, 3, 4, 5, 6, 7),
    "seq",
    TRUE
  ),
  Tangerines = list(
    c("#de7a00", "#F28500", "#FF9B21", "#FFB04F", "#FFC47D", "#ffd6a3", "#ffe1bd"),
    c(1, 2, 3, 4, 5, 6, 7),
    "seq",
    TRUE
  ),
  Greens = list(
    c("#416322", "#4e7628", "#5a892f", "#679c35", "#74af3b", "#80c044", "#8dc657"),
    c(1, 2, 3, 4, 5, 6, 7),
    "seq",
    TRUE
  ),
  Pinks = list(
    c("#860a4d", "#9e0c5b", "#b50e68", "#cd1076", "#e51284", "#ee2290", "#f03a9c"),
    c(1, 2, 3, 4, 5, 6, 7),
    "seq",
    TRUE
  ),
  Roses = list(
    c("#48282F", "#6C3C46", "#90505E", "#B56576", "#C38391", "#D2A2AC", "#E1C1C8"),
    c(1, 2, 3, 4, 5, 6, 7),
    "seq",
    TRUE
  ),
  Teals = list(
    c("#004c4c", "#006666", "#008080", "#329999", "#66b2b2", "#99cccc", "#cce5e5"),
    c(1, 2, 3, 4, 5, 6, 7),
    "seq",
    TRUE
  ),
  Yellows = list(
    c("#e6b400", "#E6C700", "#e8d119", "#ebd632", "#f0e066", "#f2e57f", "#f7efb2"),
    c(1, 2, 3, 4, 5, 6, 7),
    "seq",
    TRUE
  ),
  Reds = list(
    c("#B53737", "#BE5151", "#C76B6B", "#D08585", "#D99F9F", "#E3B9B9", "#ECD3D3"),
    c(1, 2, 3, 4, 5, 6, 7),
    "seq",
    TRUE
  ),
  Greys = list(
    c("#171517", "#363236", "#554F55", "#746D75", "#999399", "#BEBABE", "#E3E1E3"),
    c(1, 2, 3, 4, 5, 6, 7),
    "seq",
    TRUE
  ),
  Aubergines = list(
    c("#200116", "#361A2D", "#4C3344", "#624D5B", "#796673", "#8F808A", "#A599A1"),
    c(1, 2, 3, 4, 5, 6, 7),
    "seq",
    TRUE
  ),
  Browns = list(
    c("#24140E", "#542F22", "#844A36", "#B4654A", "#C88E7A", "#DCB7AA", "#F0E0DA"),
    c(1, 2, 3, 4, 5, 6, 7),
    "seq",
    TRUE
  ),
  # diverging palettes
  PurpleGreens = list(
    c("#420f75", "#7640a9", "#ad72d6", "#e7a8fb", "#f5f5f5", "#99ce64", "#659a32", "#326812", "#033800"),
    c(1, 2, 3, 4, 5, 6, 7, 8, 9),
    "div",
    TRUE
  ),
  PinkGreens = list(
    c("#7f0038", "#c31e6e", "#ef5faf", "#fcaade", "#f5f5f5", "#99ce64", "#659a32", "#326812", "#033800"),
    c(1, 2, 3, 4, 5, 6, 7, 8, 9),
    "div",
    TRUE
  ),
  TangerineBlues = list(
    c("#552000", "#8a4d00", "#c17d17", "#f8b150", "#f5f5f5", "#93c6e1", "#5f93ac", "#2e627a", "#00344a"),
    c(1, 2, 3, 4, 5, 6, 7, 8, 9),
    "div",
    TRUE
  ),
  PurpleTangerines = list(
    c("#420f75", "#7640a9", "#ad72d6", "#e7a8fb", "#f5f5f5", "#f8b150", "#c17d17", "#8a4d00", "#552000"),
    c(1, 2, 3, 4, 5, 6, 7, 8, 9),
    "div",
    TRUE
  ),
  PurplePinks = list(
    c("#420f75", "#7640a9", "#ad72d6", "#e7a8fb", "#f5f5f5", "#fcaade", "#ef5faf", "#c31e6e", "#7f0038"),
    c(1, 2, 3, 4, 5, 6, 7, 8, 9),
    "div",
    FALSE
  ),
  TealGreens = list(
    c("#00393a", "#0a6969", "#2d9c9c", "#6dcfcf", "#f5f5f5", "#99ce64", "#659a32", "#326812", "#033800"),
    c(1, 2, 3, 4, 5, 6, 7, 8, 9),
    "div",
    FALSE
  ),
  PurpleYellows = list(
    c("#420f75", "#7640a9", "#ad72d6", "#e7a8fb", "#f5f5f5", "#F2E8C4", "#EED682", "#EAC541", "#E6B400"),
    c(1, 2, 3, 4, 5, 6, 7, 8, 9),
    "div",
    TRUE
  ),
  RedBlues = list(
    c("#B53737", "#C66969", "#D79C9C", "#E8CFCF", "#f5f5f5", "#93c6e1", "#5f93ac", "#2e627a", "#00344a"),
    c(1, 2, 3, 4, 5, 6, 7, 8, 9),
    "div",
    TRUE
  ),
  # 5 qualitative colours
  Bold = list(
    c("#6497b1", "#6a359c", "#FFB04F", "#679c35", "#cd1076"),
    c(1, 2, 3, 4, 5),
    "qual",
    FALSE
  ),
  Dark = list(
    c("#436f85", "#432263", "#de7a00", "#416322", "#860a4d"),
    c(1, 2, 3, 4, 5),
    "qual",
    FALSE
  ),
  Light = list(
    c("#97b9cb", "#9057c6", "#ffe1bd", "#8dc657", "#f03a9c"),
    c(1, 2, 3, 4, 5),
    "qual",
    FALSE
  ),
  Beach = list(
    c("#0e7c7b", "#17bebb", "#d4f4dd", "#d62246", "#4b1d3f"),
    c(1, 2, 3, 4, 5),
    "qual",
    FALSE
  ),
  Fun = list(
    c("#134074", "#bfab25", "#4ea699", "#efb0a1", "#df2935"),
    c(1, 2, 3, 4, 5),
    "qual",
    TRUE
  ),
  Sea = list(
    c("#86CB92", "#71B48D", "#404E7C", "#3a3559", "#260F26"),
    c(1, 2, 3, 4, 5),
    "qual",
    TRUE
  ),
  Bright = list(
    c("#462255", "#FF8811", "#9DD9D2", "#046E8F", "#D44D5C"),
    c(1, 2, 3, 4, 5),
    "qual",
    FALSE
  ),
  Relax = list(
    c("#4B3F72", "#CBB3BF", "#FFC857", "#119DA4", "#19647E"),
    c(1, 2, 3, 4, 5),
    "qual",
    FALSE
  ),
  Lucent = list(
    c("#E01A4F", "#F15946", "#F9C22E", "#53B3CB", "#7DCFB6"),
    c(1, 2, 3, 4, 5),
    "qual",
    FALSE
  ),
  Lively = list(
    c("#413C58", "#D1495B", "#EDAE49", "#00798C", "#003D5B"),
    c(1, 2, 3, 4, 5),
    "qual",
    FALSE
  ),
  Joyful = list(
    c("#80A1C1", "#C94277", "#EEE3AB", "#274C77", "#5E8C61"),
    c(1, 2, 3, 4, 5),
    "qual",
    FALSE
  ),
  Coast = list(
    c("#16425B", "#48A9A6", "#E4DFDA", "#D4B483", "#C1666B"),
    c(1, 2, 3, 4, 5),
    "qual",
    FALSE
  ),
  Ocean = list(
    c("#0B132B", "#1C2541", "#3A506B", "#5BC0BE", "#6FFFE9"),
    c(1, 2, 3, 4, 5),
    "qual",
    FALSE
  ),
  Peppers = list(
    c("#8EA604", "#F5BB00", "#EC9F05", "#D76A03", "#BF3100"),
    c(1, 2, 3, 4, 5),
    "qual",
    FALSE
  ),
  Disco = list(
    c("#F75C03", "#D90368", "#04A777", "#820263", "#F4E409"),
    c(1, 2, 3, 4, 5),
    "qual",
    FALSE
  ),
  # 6 qualitative colours
  Neon = list(
    c("#ff9062", "#fd6598", "#cb64c0", "#3294dd", "#75fb8a", "#d0eb60"),
    c(1, 2, 3, 4, 5, 6),
    "qual",
    FALSE
  ),
  Oasis = list(
    c("#AE8A1E", "#0C3A61", "#D60CB6", "#09CED0", "#4D08C5", "#F760BD"),
    c(1, 2, 3, 4, 5, 6),
    "qual",
    FALSE
  ),
  Celestial = list(
    c("#A053A1", "#DB778F", "#E69F52", "#09A39A", "#5869C7", "#004B67"),
    c(1, 2, 3, 4, 5, 6),
    "qual",
    FALSE
  ),
  Aurora = list(
    c("#53113F", "#6C1A41", "#ABEF07", "#059C59", "#295542", "#5C8797"),
    c(1, 2, 3, 4, 5, 6),
    "qual",
    FALSE
  ),
  # 12 qualitative colours
  Spring = list(
    c(
      "#CAF9A9", "#ECBBC2", "#B3EDAA", "#B2E3E7", "#D3ECDF", "#E5FCAA",
      "#F4FFC7", "#E9C7A2", "#E6B7AD", "#D2EDAD", "#EBD993", "#C4E2B8"
    ),
    c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12),
    "qual",
    FALSE
  ),
  Summer = list(
    c(
      "#808FBB", "#E0A662", "#785B57", "#AC9567", "#AE7F5B", "#968262",
      "#9993B5", "#837189", "#C57253", "#F79D50", "#C086BF", "#EC94CA"
    ),
    c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12),
    "qual",
    FALSE
  ),
  Autumn = list(
    c(
      "#915646", "#BA6E1D", "#CA9C2F", "#905C23", "#DBB053", "#5D6538",
      "#A14E17", "#7F603E", "#DA8E28", "#917836", "#972C0B", "#5A4E3E"
    ),
    c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12),
    "qual",
    FALSE
  ),
  Winter = list(
    c(
      "#829BAB", "#CDD4E0", "#9F9C9F", "#D0DEEC", "#8F9CA9", "#C9CDF5",
      "#BAD0E3", "#BBBCAE", "#E1E3E7", "#777E85", "#B7BFC7", "#D3E6EF"
    ),
    c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12),
    "qual",
    FALSE
  ),
  Rainbow = list(
    c(
      "#e51e32", "#ff782a", "#fda805", "#e2cf04", "#b1ca05", "#98c217",
      "#779815", "#029e77", "#09989c", "#059ccd", "#3f64ce", "#7e2b8e"
    ),
    c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12),
    "qual",
    FALSE
  ),
  Velvet = list(
    c(
      "#3C0C48", "#7A3886", "#4E105C", "#501196", "#6E4183", "#46135A",
      "#483B75", "#383071", "#39457D", "#78146C", "#890E5C", "#451130"
    ),
    c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12),
    "qual",
    FALSE
  )
)
