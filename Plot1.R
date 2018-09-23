#reading and asignment
setwd("~/ExData_Project2")
NEI <- readRDS("exdata-data-NEI_data/summarySCC_PM25.rds")    
SCC <- readRDS("exdata-data-NEI_data/Source_Classification_Code.rds")

#star plot 1

totalNEI<-tapply(NEI$Emissions, INDEX=NEI$year, sum)     

barplot(totalNEI, main = 'Total PM'[2.5]*' emissions at various years', xlab="Year", ylab='total PM'[2.5]*' emission')