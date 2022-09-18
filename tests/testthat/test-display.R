test_that("palette display", {

  expect_silent(view_all_palettes())
  expect_silent(view_all_palettes(type = "seq"))

  expect_error(prettycols("new_name"))
  expect_error(prettycols("Relax", n = 6))

  expect_equal(ncol(colourblind_friendly()), 2)

})
