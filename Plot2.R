#reading and asignment
setwd("~/ExData_Project2")
NEI <- readRDS("exdata-data-NEI_data/summarySCC_PM25.rds")    
SCC <- readRDS("exdata-data-NEI_data/Source_Classification_Code.rds")

#star plot 2
baltimore<-subset(NEI, NEI$fips==24510) 
totalBaltimore<-tapply(baltimore$Emissions, INDEX=baltimore$year, sum) 
barplot(totalBaltimore, main='Total PM'[2.5]*' in the Baltimore City, MD emissions at various years', xlab="Year", ylab='total PM'[2.5]*' emission')