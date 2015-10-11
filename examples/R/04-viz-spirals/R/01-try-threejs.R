### 
# - Based on code at http://neurochem.sisbio.recerca.upc.edu/?p=311.
#  -- R package `rgl` is used for 3D viz.
# - Try to use a new R package `threejs`.
#  -- See http://www.htmlwidgets.org/showcase_threejs.html for more details about `threejs`.

### inc
library(pls)

library(threejs)

### par
dat.dir <- "~/git/variani/pulmon/dat"

### data
load(file.path(dat.dir, "spirals-pub.RData")) # -> `X`, `Xs`, `Y`, `Ycol`

### PCA model
mod <- prcomp(X, center = TRUE, scale = TRUE)
#plot3d(mod$x[, 1:3], col=Ycol, type="l", lwd=2)   

scores <- mod$x[, 1:3]

prop <- summary(mod)$importance[2, 1:3]
labs <- paste0(names(prop), " (", round(100*prop, 0), "%)")

### plot
ind <- c(2, 1, 3)

colnames(scores) <- labs

scatterplot3js(scores[, ind], color = Ycol, size = 0.5, stroke = NULL)



