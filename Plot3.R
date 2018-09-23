#reading and asignment
setwd("~/ExData_Project2")
NEI <- readRDS("exdata-data-NEI_data/summarySCC_PM25.rds")    
SCC <- readRDS("exdata-data-NEI_data/Source_Classification_Code.rds")

#star plot 3
subsetNEI  <- NEI[NEI$fips=="24510", ]

aggregatedTotalByYearAndType <- aggregate(Emissions ~ year + type, subsetNEI, sum)

g <- ggplot(aggregatedTotalByYearAndType, aes(year, Emissions, color = type))
g <- g + geom_line() +
  xlab("year") +
  ylab(expression('Total PM'[2.5]*" Emissions")) +
  ggtitle('Total Emissions in Baltimore City, Maryland (fips == "24510") from 1999 to 2008')
print(g)
dev.off()