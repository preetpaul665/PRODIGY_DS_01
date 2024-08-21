# PRODIGY_DS_01

# VISUALIZATION OF THE GIVEN "population" DATASET

## Importing the csv file

population <- read.csv("C:\\Users\\PREET PAUL\\Desktop\\Presidency University M.Sc. Notes\\Prodigy Infotech\\population.csv")
head(population)
View(population)

## Eliminating the unnecessary rows in the dataframe
population <- population[-c(1,2,3), ]
View(population)
population[1,]
names(population) <- population[1, ] # Changing the column names of the data frame
population <- population[-c(1), ]
View(population)

# Checking for missing values in the dataframe
dim(population) # dimension of the dataframe
sum(is.na(population))

## Here, we clearly see that there is missing values present in the dataset
## So, we have to clean the data before performing any graphical presentation

# Identifying the cells which includes the missing values
which(is.na(population))

# Identifying the rows which includes the missing values
rows_with_NA <- population[apply(population, 1, function(x) any(is.na(x))),]
rows_with_NA
View(rows_with_NA)

## From the above, we can clearly see that the rows which are numbered 115 & 201 contains all the missing values.
## So, we will eliminate those rows from our dataset.

# Eliminating the rows which contains all the missing values

population <- population[-c(111,197),]
sum(is.na(population))
View(population)

## Hence, the dataset is free from any missing values

## From the dataset, we can clearly see that, the 3 variables viz. "Country Code", "Indicator Name" & "Indicator Code"
## are attributes(more precisely, nominal variables) and the rest which are denotes by 1960 to 2005, that represents the 
## population of the corresponding years. So, those are continuous variables. So, we will give our graphical analysis 
## on those variables.

# Eliminating the nominal variables of the dataset
population <- population[, -c(2,3,4)]
View(population)

# Giving rownames to the dataset
rownames(population) <- population[,c(1)]
population <- population[,-c(1)]

# Beginning of the Graphical Analysis

# Loading the package "Hmisc"
library(Hmisc)

# Histograms of population distribution of the year 1960-1969
hist.data.frame(population[,c(seq(1,10,1))])  

# Histograms of population distribution of the year 1970-1979
hist.data.frame(population[,c(seq(11,20,1))])  

# Histograms of population distribution of the year 1980-1989
hist.data.frame(population[,c(seq(21,30,1))])  

# Histograms of population distribution of the year 1990-1999
hist.data.frame(population[,c(seq(31,40,1))])  

# Histograms of population distribution of the year 2000-2009
hist.data.frame(population[,c(seq(41,50,1))])  

# Histograms of population distribution of the year 2010-2019
hist.data.frame(population[,c(seq(51,60,1))])  

# Histograms of population distribution of the year 2020-2023
hist.data.frame(population[,c(seq(61,64,1))])  


