## PrettyCols 1.1.0 2024_06_22

### Breaking changes

* Argument `name` in `scale_*_*()` functions is now used to define the title of the legend, to make this consistent with other {ggplot2} `scale` functions. If you have previously used e.g. `scale_fill_manual(name = "Bright")` to say you want to use the `"Bright"` palette, this will result in an error. Please use `scale_fill_manual(palette = "Bright")` instead.
* Argument `legend_title` in `scale_*_*()` functions is deprecated. Please use `name` instead. For now, `legend_title` still works. 

### Non-breaking changes

* Move Python implementation to separate repository
* Add `scale_*_pretty_div()` diverging scale functions
* Changes examples to `mtcars` data
* Remove `scale_name` from `discrete_scale()` calls
* Add {lifecycle} to Imports
* Removed {purrr} dependency
* Add 8 new palettes

## PrettyCols 1.0.1 2023_01_27

* Add 12 new palettes
* Allow multiple selection of palettes
* Filter by colourblind friendly palettes
* Add `legend_title` argument to scale functions
* Edit `print.palette` to add border
* Update tests and vignettes
* More informative error messages

## PrettyCols 1.0.0 2022_08_28

* first CRAN submission
* use CC0 license
* remove `complementary_color()`
* add examples to documentation

## PrettyCols 0.0.7 2022_08_27

* add `view_all_palettes()` function
* add `Autumn`, `Winter`, `Rainbow`, `Teals` and `TealGreens` palettes
* update vignettes
* edit layout of print function slightly
* add basic tests using {testthat}

## PrettyCols 0.0.6 2022_08_21

* update linting
* update GitHub Actions
* Add `Relax` palette

## PrettyCols 0.0.5 2022_05_21

* update pkgdown site

## PrettyCols 0.0.4 2022_05_21

* add new palettes
* add R CMD checks

## PrettyCols 0.0.3 2022_05_14

* add new palettes
* add vignettes
* add function for finding complementary colour

## PrettyCols 0.0.2 2022_05_07

* update license

## PrettyCols 0.0.1 2022_03_25

* initial package
* add MoodyBlues palette

