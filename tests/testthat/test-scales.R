test_that("scales functions works", {
  fill_scale = scale_fill_pretty_c(name = "Greens")
  expect_equal(fill_scale$is_discrete(), FALSE)

  fill_scale = scale_fill_pretty_d(name = "Relax")
  expect_equal(fill_scale$is_discrete(), TRUE)

  colour_scale = scale_colour_pretty_c(name = "Greens")
  expect_equal(colour_scale$is_discrete(), FALSE)

  colour_scale = scale_colour_pretty_d(name = "Relax")
  expect_equal(colour_scale$is_discrete(), TRUE)
})
