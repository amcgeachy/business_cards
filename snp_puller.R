getwd()
setwd("~/Ancestry/")

snp_data = read.delim("AncestryDNA-trim.txt", header=TRUE, stringsAsFactors = FALSE)
head(snp_data)

library("dplyr")

baby = head(snp_data, n=20)

baby

head(baby)

filler_baby = matrix(nrow=nrow(baby), ncol=4)
filler_baby = as.data.frame(filler_baby)
head(filler_baby)

for(j in 1:nrow(baby)){
  filler_baby[j,1] = paste(baby[j+1,"rsid"], baby[j,"rsid"], sep=",")  
  filler_baby[j,2] = as.numeric(baby[j+1,"position"] - baby[j,"position"])
  filler_baby[j,3] = paste(baby[j+1,"chromosome"], baby[j,"chromosome"], sep=",")  
  filler_baby[j,4] = paste(baby[j+1,"position"], baby[j,"position"], sep=",")    
}

filler_baby
for(i in 1:nrow(baby)){
test[i] = ifelse(baby[i, "chromosome"] == baby[i+1, "chromosome"] && baby[i, "position"]< baby[i+1, "position"],
       baby[i+1, "position"] - baby[i, "position"], NA)
}
baby
test = ifelse(baby[1, "chromosome"] == baby[1+1, "chromosome"] && baby[1, "position"]< baby[1+1, "position"],
              baby[1+ 1, "position"] - baby[1, "position"], NA)
length(test)
nrow(snp_data)


for(i in 1:nrow(snp_data)){
  test[i] = ifelse(snp_data[i, "chromosome"] == snp_data[i+1, "chromosome"] && snp_data[i, "position"]< snp_data[i+1, "position"],
                   snp_data[i+1, "position"] - snp_data[i, "position"], NA)
  
}