test_that("palettes are valid", {
  expect_equal(length(names(PrettyColsPalettes)), length(unique(names(PrettyColsPalettes))))

})
