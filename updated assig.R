Cereals <- read_csv("Cereals.csv")
View(Cereals)
Cereals %>% 
  group_by(type) %>% 
  summarise(
    count=n(),
    mean_sugars=mean(sugars,na.rm=TRUE),
    mean_vitamins=mean(vitamins,na.rm=TRUE)
  )

Cereals %>% 
 group_by(mfr) %>%
  summarise(
    count=n(),
    mean_sugars=mean(sugars, na.rm=TRUE),
    
  )
Cereals <- read_csv("Cereals.csv")
View(Cereals) ## Dataset provided in the course module

## printout descriptive stats for both quantative & categorical Variables
summary(Cereals[, c("mfr", "sugars")])
table(Cereals$mfr)
table(Cereals$type)
table(Cereals$name)

#Print out descriptive stats for categorical variables
table(Cereals$mfr)
table(Cereals$type)

#print out descriptive statistics for quantitative var (sugar,fat)
print("summary of sugars and fats")
summary(Cereals[,c("sugars","fat")])

#printout descriptive statistics for CATEGORICAL VARIABLE (MFR,TYPE)
PRINT("summary of mfr and type")
summary(Cereals[,c("mfr","type")])
table(Cereals$mfr)
table(Cereals$type)

#summareize quantatitive var by group category(mfr)-installed dplyr
Cereals %>% 
  group_by(mfr) %>% 
  summarise(
    count=n(),
    mean_sugars=mean(sugars,na.rm=TRUE),
    meadian_sugars=median(sugars,na.rm=TRUE),
    sd_sugars=sd(sugars,na.rm=TRUE),
    mean_fat=mean(fat, na.rm=TRUE),
    median_fat=median(fat,na.rm=TRUE),
    sd_fat=sd(fat,na.rm=TRUE),
    )

#transform  at least one quantative variable()