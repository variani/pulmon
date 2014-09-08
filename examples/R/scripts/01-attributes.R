### par
dat.dir <- "dat"

### read
if(!exists("dat")) {
  dat <- read.table(gzfile(file.path(dat.dir, "rawdata.csv.gz")), header = TRUE, sep = ",")
}

if(!exists("feat")) {
  feat <- read.table(file.path(dat.dir, "features.csv"), header = TRUE, sep = ",")
}  

### print `dat`
head(colnames(dat), 10)

tail(colnames(dat))

### print `feat`
head(colnames(feat), 25)

tail(colnames(feat))
