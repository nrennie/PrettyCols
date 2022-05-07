# PrettyCols <img src="man/figures/PrettyCols.png" align="right" width="120" />

{PrettyCols} is an R package containing aesthetically pleasing colour palettes. 

The structure of the package is based on code from the [{PNWColors}](https://github.com/jakelawlor/PNWColors),  [{wesanderson}](https://github.com/karthik/wesanderson), and [{MetBrewer}](https://github.com/BlakeRMills/MetBrewer) packages. 

## Installation:

Install using:
``` r
devtools::install_github("nrennie/PrettyCols")
```
or
``` r
remotes::install_github("nrennie/PrettyCols")
```

## Available palettes

### Moody Blues (`"MoodyBlues"`)

```
prettycols("MoodyBlues", n = 7, type = "discrete")
```
<img src="https://github.com/nrennie/PrettyCols/blob/main/man/figures/MoodyBlues_d.jpeg?raw=true" width="30%">


```
prettycols("MoodyBlues", n = 100, type = "continuous")
```
<img src="https://github.com/nrennie/PrettyCols/blob/main/man/figures/MoodyBlues_c.jpeg?raw=true" width="30%">

## Using with {ggplot2}

```
library(ggplot2)
df <- data.frame(type = c("A", "B", "C"), 
                 value = c(1, 2, 3))
ggplot(data = df, 
       mapping = aes(x = type, y = value, fill = type)) +
  geom_col() +
  scale_fill_pretty_d(name = "MoodyBlues")
```
<img src="https://github.com/nrennie/PrettyCols/blob/main/man/figures/ggplot2_example.jpeg?raw=true" width="30%">







