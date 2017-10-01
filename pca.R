rm(list=ls())
setwd("~/Box Sync/Lab/KM Plot/LiverCancer")
df.input = read.table("LUAD_all", header = TRUE,sep="\t",stringsAsFactors = FALSE,na.strings=c("", "NA"))
#df.input = read.table("BRCA_clinicalMatrix", header = TRUE,sep="\t",stringsAsFactors = FALSE)
#name=df.input[1]
#namepro=df.map[2:dim(df.map)[2],1]
df.input <- na.omit(df.input)
Trk=df.input
a=colnames(df.input)
for(i in 2:(dim(df.input)[2]))
{
  if(substr(colnames(df.input)[i],14,15)!='01')
  {
    df.input[i]=NULL
    i=i-1;
  }
}