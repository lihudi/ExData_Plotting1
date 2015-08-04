rm(list = ls())

## ----- Set locale to english -----
# Required for using english names for week days
Sys.setlocale("LC_TIME", "en_GB.UTF-8")

## ----- Load libraries -----
library(lubridate)
library(dplyr)

## ----- Load the data -----
filename <- "household_power_consumption.txt"
data <- read.table(filename, header = TRUE, sep = ";", dec = ".", na.strings = "?")

## ----- Slightly mutate the data -----
# Read dates and times as dates and times instead of as factors
data <- mutate(data, Date = dmy(Date), Time = hms(Time)) 
# Create a new column with full date time
data <- mutate(data, DateTime = Date + Time) 

## ----- Subset the data within the time interval -----
data <- data[data$Date >= ymd("2007-02-01"), ]
data <- data[data$Date <= ymd("2007-02-02"), ]

