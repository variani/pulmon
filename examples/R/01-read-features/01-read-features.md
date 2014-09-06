% Example on reading the features in R
% Andrey Ziyatdinov
% 05/09/2014




## About

This document shows an example of code in R,
in order to read the `features.csv` of the `pulmon` data set published on 
[The UC Irvine Machine Learning Repository](http://archive.ics.uci.edu/ml/).

A particular example of data analysis is a PCA on the high-frequency `Ahf` features,
that reproduces the results obtained in [Ziyatdinov et al., 2014](http://www.journals.elsevier.com/sensors-and-actuators-b-chemical/),
Section 3.1, Figure 4 c.

## How to reproduce this report

The working directory:

```r
getwd()
```

```
## [1] "/home/aziyatdinov/git/variani/pulmon/examples/R/01-read-features"
```


Run the following commands in R:

```
library(knitr)
knit2html("01-read-features.Rmd")
```

That results in two output files: `*.md` (for github) and `*.html` (for browsing locally on your computer).

## Data files

For this report the data files are stored in:


```r
dat.dir <- "../../dat"

list.files(dat.dir)
```

```
## character(0)
```


## Demo


```r
### inc
library(plyr)
library(ggplot2)

library(pls)

### options
options(stringsAsFactors = FALSE)
```



```r
### data
dat <- read.table(file.path(dat.dir, "features.csv"), header = TRUE, sep = ",")
```

```
## Error: cannot open the connection
```

```r
head(colnames(dat), 30)
```

```
## Error: object 'dat' not found
```



```r
### PCA
ind <- grep("Ahf", colnames(dat))
```

```
## Error: object 'dat' not found
```

```r
X <- dat[, ind]
```

```
## Error: object 'dat' not found
```

```r

Y <- dat$lab
```

```
## Error: object 'dat' not found
```

```r

cols <- dat$col
```

```
## Error: object 'dat' not found
```

```r
cols <- paste0("#", cols)
```

```
## Error: object 'cols' not found
```

```r

mod <- prcomp(X, center = TRUE, scale = TRUE)
```

```
## Error: object 'X' not found
```

```r

### plot
scoreplot(mod, col = cols, pch = 20, cex = 3)
```

```
## Error: object 'mod' not found
```

