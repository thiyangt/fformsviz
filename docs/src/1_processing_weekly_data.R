DF <- as.data.frame(M4weekly_votes)
head(DF)
a <- colnames(DF)[apply(DF,1,which.max)]
table(a)
b <- wm4_true_classlabels

for(i in 1:359){

if(a[i]=="SARIMA"){
  b[i] <- "SARIMA"
} else {
  b[i] <- b[i]
}
}
table(b)
table(wm4_true_classlabels)
table(a)

wm4_true_classlabels2 <- b
save(wm4_true_classlabels2, file="data/weekly/wm4_true_classlabels2.rda")
