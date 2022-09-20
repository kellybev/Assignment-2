# Marilyn Beverly
# Intro to R
# Assignment 1


#1. Determine which one of the ﬁles is the CSV format ﬁle using the techniques described in the lecture slides.
read.table("weather1.a")
read.table("weather2.b")
read.table("weather3.c")
# weather2.b is in csv format


#2. Write an R expression that calls read.csv() to open the CSV format ﬁle from the directory on your computer 
#   with R. 
read.csv("C:/Users/Kelly/Documents/TESU/DSI 506 Intro to R/Assignment 1 Files/weather2.b",header = TRUE)


#3. Write two R expressions that call setwd(), to change R’s working directory to be the directory where the 
#   ﬁle is, then read.csv(), with just the ﬁle name, to open the CSV ﬁle. The result should be exactly the same
#   as for the previous question.
setwd("C:/Users/Kelly/Documents/TESU/DSI 506 Intro to R/Assignment 1 Files/")
read.csv("weather2.b")


#4. Write an R expression to open the ﬁrst ﬁle, "data20130101.csv".
read.csv("data20130101.csv",row.names = 1)


#5. Write R code to calculate the maximum and minimum values in the ﬁrst CSV ﬁle and assign the results to symbols minValue and maxValue.
file1 <- read.csv("data20130101.csv",row.names = 1)
maxValue <- max(file1)
minValue <- min(file1)
maxValue
minValue


#6. The largest value in the ﬁle is a barometer pressure in hectopascals. 1 hectopascal is equivalent to 
#   0.0145037738 psi (pounds per square inch). Write R code to convert the maximum value in the ﬁle to psi.
maxPSI <- maxValue * 0.0145037738
maxPSI


#7. Write R code to calculate the maximum value across all 9 ﬁles.
file2 <- read.csv("data20130102.csv",row.names = 1)
file3 <- read.csv("data20130103.csv",row.names = 1)
file4 <- read.csv("data20130104.csv",row.names = 1)
file5 <- read.csv("data20130105.csv",row.names = 1)
file6 <- read.csv("data20130106.csv",row.names = 1)
file7 <- read.csv("data20130107.csv",row.names = 1)
file8 <- read.csv("data20130108.csv",row.names = 1)
file9 <- read.csv("data20130109.csv",row.names = 1)

overallMax <- max(file1, file2, file3, file4, file5, file6, file7, file8, file9)
overallMax