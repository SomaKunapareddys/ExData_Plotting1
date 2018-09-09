
#---------------------------------  Plot 2  --------------------------------- 

#set Directory
setwd("D:/Tech/Data Scientist/R Programming/Course-4_Exploratory Data Analysis/Week1")

#Reading the Files using any1--> read files read.table(),read.csv() and read.delim().
cls <- c(Voltage="numeric", Global_active_power="numeric",Global_intensity="numeric",Sub_metering_1="numeric",Sub_metering_2="numeric",Sub_metering_3="numeric",Global_active_power="numeric",Global_reactive_power="numeric")
pwrdt <- read.table("household_power_consumption.txt", header=TRUE, sep=";",dec=".", stringsAsFactors=FALSE, na.strings = "?",colClasses=cls)

#Read data between dates 2007-02-01 and 2007-02-02.
EnrgyDta <- pwrdt[pwrdt$Date %in% c("1/2/2007","2/2/2007") ,]

datas <- strptime(paste(EnrgyDta$Date, EnrgyDta$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
png("plot2.png", width=480, height=480)
plot(datas, as.numeric(EnrgyDta$Global_active_power), type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
