## ---- pkg
library(seer)
library(tidyverse)

## ---- datafile
rm(list=ls())
load("~/PhD_journey/fformsviz/data/benchmarkaccuracy_weekly_hourly/weekly/M4weekly_0.rda")
a1 <- name1$ARIMA
load("~/PhD_journey/fformsviz/data/benchmarkaccuracy_weekly_hourly/weekly/M4weekly_1.rda")
a2 <- name1$ARIMA
load("~/PhD_journey/fformsviz/data/benchmarkaccuracy_weekly_hourly/weekly/M4weekly_2.rda")
a3 <- name1$ARIMA
load("~/PhD_journey/fformsviz/data/benchmarkaccuracy_weekly_hourly/weekly/M4weekly_3.rda")
a4 <- name1$ARIMA
load("~/PhD_journey/fformsviz/data/benchmarkaccuracy_weekly_hourly/weekly/M4weekly_4.rda")
a5 <- name1$ARIMA
load("~/PhD_journey/fformsviz/data/benchmarkaccuracy_weekly_hourly/weekly/M4weekly_5.rda")
a6 <- name1$ARIMA
load("~/PhD_journey/fformsviz/data/benchmarkaccuracy_weekly_hourly/weekly/M4weekly_6.rda")
a7 <- name1$ARIMA
load("~/PhD_journey/fformsviz/data/benchmarkaccuracy_weekly_hourly/weekly/M4weekly_7.rda")
a8 <- name1$ARIMA

length(a1)
length(a2)
length(a3)
length(a4)
length(a5)
length(a6)
length(a7)
length(a8)

ARIMA.names <- c(a1, a2, a3, a4, a5, a6, a7, a8)
length(ARIMA.names) # 359
ARIMA.split.names <- seer::split_names(ARIMA.names)
table(ARIMA.split.names$Model)

