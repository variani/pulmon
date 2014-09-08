
```
> source("examples/R/scripts/01-attributes.R", echo = T)

> ### par
> dat.dir <- "dat"

> ### read
> if(!exists("dat")) {
+   dat <- read.table(gzfile(file.path(dat.dir, "rawdata.csv.gz")), header = TRUE, sep = ",")
+ }

> if(!exists("feat")) {
+   feat <- read.table(file.path(dat.dir, "features.csv"), header = TRUE, sep = ",")
+ }  

> ### print `dat`
> head(colnames(dat), 10)
 [1] "sensor"   "sample"   "exp"      "batch"    "ace_conc" "eth_conc"
 [7] "gas"      "lab"      "col"      "dR_t1"   

> tail(colnames(dat))
[1] "dR_t7495" "dR_t7496" "dR_t7497" "dR_t7498" "dR_t7499" "dR_t7500"

> ### print `feat`
> head(colnames(feat), 25)
 [1] "exp"       "batch"     "ace_conc"  "eth_conc"  "gas"       "lab"      
 [7] "col"       "S1_max"    "S2_max"    "S3_max"    "S4_max"    "S5_max"   
[13] "S6_max"    "S7_max"    "S8_max"    "S9_max"    "S10_max"   "S11_max"  
[19] "S12_max"   "S13_max"   "S14_max"   "S15_max"   "S16_max"   "S1_r1_Alf"
[25] "S1_r2_Alf"

> tail(colnames(feat))
[1] "S16_r8_Ahf"  "S16_r9_Ahf"  "S16_r10_Ahf" "S16_r11_Ahf" "S16_r12_Ahf"
[6] "S16_r13_Ahf"
> 
```
