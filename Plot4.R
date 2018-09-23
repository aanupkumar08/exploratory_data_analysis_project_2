#reading and asignment
setwd("~/ExData_Project2")
NEI <- readRDS("exdata-data-NEI_data/summarySCC_PM25.rds")    
SCC <- readRDS("exdata-data-NEI_data/Source_Classification_Code.rds")

#star plot 4

coalMatches  <- grepl("coal", NEISCC$Short.Name, ignore.case=TRUE)
subsetNEISCC <- NEISCC[coalMatches, ]

aggregatedTotalByYear <- aggregate(Emissions ~ year, subsetNEISCC, sum)


g <- ggplot(aggregatedTotalByYear, aes(factor(year), Emissions))
g <- g + geom_bar(stat="identity") +
  xlab("year") +
  ylab(expression('Total PM'[2.5]*" Emissions")) +
  ggtitle('Total Emissions from coal sources from 1999 to 2008')
print(g)
dev.off()