test_that("palette display", {

  expect_silent(view_all_palettes())
  expect_silent(view_all_palettes(type = "seq"))
  expect_silent(view_all_palettes(type = "all", colourblind_friendly = TRUE))
  expect_silent(view_all_palettes(type = "seq", colourblind_friendly = TRUE))
  expect_error(view_all_palettes(type = "sequential"))

  expect_error(prettycols("new_name"))
  expect_error(prettycols("Relax", n = 6))
  expect_error(prettycols("Relax", type = "cont"))
  expect_error(prettycols("Relax", direction = 0))
  expect_silent(prettycols("Relax", direction = -1))

  expect_equal(ncol(colourblind_friendly()), 2)
  expect_equal(ncol(colorblind_friendly()), 2)

})
