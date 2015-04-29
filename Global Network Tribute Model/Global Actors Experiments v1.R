###Global Actors Experiments
###Harold Walbert
###hwalbert@gmu.edu


###Need to install the required package and then load and attach the package 
#install.packages("RNetLogo")
library('RNetLogo')
library('dplyr')

###
setwd('C:/Program Files (x86)/NetLogo 5.1.0')

setwd('C:/Users/Harold/Documents/CSS/CSS610/Global Actors Research')
###This code starts the NetLogo GUI
nl.path <- getwd()
NLStart(nl.path)

###This loads a specific model saved on your computer
NLLoadModel('C:/Users/Harold/Documents/CSS/CSS610/Global Actors Research/GlobalAgentModel_V4.4.nlogo')

###This is where the experiments for the Global Actors Paper are created
###Experiments are run on four years: 1945, 1960, 1980 & 2007
###The parameter sweep is run through the tribute amount at levels of .25, .5 & .75
###This value is to set the number of repetitions to run the experiment
NumberOfRepetitions <- 100

#########1945############
NLCommand("set Year 1945")
NLCommand("set tribute .25")
Winners1945_25 <- data.frame(row.names = c(1:6))
for (i in 1:NumberOfRepetitions)
{
  NLCommand("setupYearGraph")
  NLDoCommand(300, "runOneYear")
  people <- NLGetAgentSet(c("StateNme","wealth"),"turtles", as.data.frame=TRUE)
  people <- arrange(people, desc(wealth))
  Winners <- as.data.frame(head(people$StateNme))
  Winners1945_25 <- as.data.frame(bind_cols(Winners1945_25, Winners))
}

Winners1945_25 <- as.data.frame(t(Winners1945_25))
Num_1_1945_25 <- pie(table(Winners1945_25$V1), names(table(Winners1945_25$V1)),main = "1st Place Outcomes in 1945 @ .25 tribute")
Num_2_1945_25 <- pie(table(Winners1945_25$V2), names(table(Winners1945_25$V2)),main = "2nd Place Outcomes in 1945 @ .25 tribute")
Num_3_1945_25 <- pie(table(Winners1945_25$V3), names(table(Winners1945_25$V3)),main = "3rd Place Outcomes in 1945 @ .25 tribute")
Num_4_1945_25 <- pie(table(Winners1945_25$V4), names(table(Winners1945_25$V4)),main = "4th Place Outcomes in 1945 @ .25 tribute")
Num_5_1945_25 <- pie(table(Winners1945_25$V5), names(table(Winners1945_25$V5)),main = "5th Place Outcomes in 1945 @ .25 tribute")

###Leave year as 1945 but change tribute to .5
NLCommand("set tribute .5")
Winners1945_5 <- data.frame(row.names = c(1:6))
for (i in 1:NumberOfRepetitions)
{
  NLCommand("setupYearGraph")
  NLDoCommand(300, "runOneYear")
  people <- NLGetAgentSet(c("StateNme","wealth"),"turtles", as.data.frame=TRUE)
  people <- arrange(people, desc(wealth))
  Winners <- as.data.frame(head(people$StateNme))
  Winners1945_5 <- as.data.frame(bind_cols(Winners1945_5, Winners))
}

Winners1945_5 <- as.data.frame(t(Winners1945_5))
Num_1_1945_5 <- pie(table(Winners1945_5$V1), names(table(Winners1945_5$V1)),main = "1st Place Outcomes in 1945 @ .5 tribute")
Num_2_1945_5 <- pie(table(Winners1945_5$V2), names(table(Winners1945_5$V2)),main = "2nd Place Outcomes in 1945 @ .5 tribute")
Num_3_1945_5 <- pie(table(Winners1945_5$V3), names(table(Winners1945_5$V3)),main = "3rd Place Outcomes in 1945 @ .5 tribute")
Num_4_1945_5 <- pie(table(Winners1945_5$V4), names(table(Winners1945_5$V4)),main = "4th Place Outcomes in 1945 @ .5 tribute")
Num_5_1945_5 <- pie(table(Winners1945_5$V5), names(table(Winners1945_5$V5)),main = "5th Place Outcomes in 1945 @ .5 tribute")


NLCommand("set tribute .75")
Winners1945_75 <- data.frame(row.names = c(1:6))
for (i in 1:NumberOfRepetitions)
{
  NLCommand("setupYearGraph")
  NLDoCommand(300, "runOneYear")
  people <- NLGetAgentSet(c("StateNme","wealth"),"turtles", as.data.frame=TRUE)
  people <- arrange(people, desc(wealth))
  Winners <- as.data.frame(head(people$StateNme))
  Winners1945_75 <- as.data.frame(bind_cols(Winners1945_75, Winners))
}

Winners1945_75 <- as.data.frame(t(Winners1945_75))
Num_1_1945_75 <- pie(table(Winners1945_75$V1), names(table(Winners1945_75$V1)),main = "1st Place Outcomes in 1945 @ .75 tribute")
Num_2_1945_75 <- pie(table(Winners1945_75$V2), names(table(Winners1945_75$V2)),main = "2nd Place Outcomes in 1945 @ .75 tribute")
Num_3_1945_75 <- pie(table(Winners1945_75$V3), names(table(Winners1945_75$V3)),main = "3rd Place Outcomes in 1945 @ .75 tribute")
Num_4_1945_75 <- pie(table(Winners1945_75$V4), names(table(Winners1945_75$V4)),main = "4th Place Outcomes in 1945 @ .75 tribute")
Num_5_1945_75 <- pie(table(Winners1945_75$V5), names(table(Winners1945_75$V5)),main = "5th Place Outcomes in 1945 @ .75 tribute")

#########1960############

#########Set the year to 1960
NLCommand("set Year 1960")
NLCommand("set tribute .25")
Winners1960_25 <- data.frame(row.names = c(1:6))
for (i in 1:NumberOfRepetitions)
{
  NLCommand("setupYearGraph")
  NLDoCommand(300, "runOneYear")
  people <- NLGetAgentSet(c("StateNme","wealth"),"turtles", as.data.frame=TRUE)
  people <- arrange(people, desc(wealth))
  Winners <- as.data.frame(head(people$StateNme))
  Winners1960_25 <- as.data.frame(bind_cols(Winners1960_25, Winners))
}

Winners1960_25 <- as.data.frame(t(Winners1960_25))
Num_1_1960_25 <- pie(table(Winners1960_25$V1), names(table(Winners1960_25$V1)),main = "1st Place Outcomes in 1960 @ .25 tribute")
Num_2_1960_25 <- pie(table(Winners1960_25$V2), names(table(Winners1960_25$V2)),main = "2nd Place Outcomes in 1960 @ .25 tribute")
Num_3_1960_25 <- pie(table(Winners1960_25$V3), names(table(Winners1960_25$V3)),main = "3rd Place Outcomes in 1960 @ .25 tribute")
Num_4_1960_25 <- pie(table(Winners1960_25$V4), names(table(Winners1960_25$V4)),main = "4th Place Outcomes in 1960 @ .25 tribute")
Num_5_1960_25 <- pie(table(Winners1960_25$V5), names(table(Winners1960_25$V5)),main = "5th Place Outcomes in 1960 @ .25 tribute")


NLCommand("set tribute .5")
Winners1960_5 <- data.frame(row.names = c(1:6))
for (i in 1:NumberOfRepetitions)
{
  NLCommand("setupYearGraph")
  NLDoCommand(300, "runOneYear")
  people <- NLGetAgentSet(c("StateNme","wealth"),"turtles", as.data.frame=TRUE)
  people <- arrange(people, desc(wealth))
  Winners <- as.data.frame(head(people$StateNme))
  Winners1960_5 <- as.data.frame(bind_cols(Winners1960_5, Winners))
}

Winners1960_5 <- as.data.frame(t(Winners1960_5))
Num_1_1960_5 <- pie(table(Winners1960_5$V1), names(table(Winners1960_5$V1)),main = "1st Place Outcomes in 1960 @ .5 tribute")
Num_2_1960_5 <- pie(table(Winners1960_5$V2), names(table(Winners1960_5$V2)),main = "2nd Place Outcomes in 1960 @ .5 tribute")
Num_3_1960_5 <- pie(table(Winners1960_5$V3), names(table(Winners1960_5$V3)),main = "3rd Place Outcomes in 1960 @ .5 tribute")
Num_4_1960_5 <- pie(table(Winners1960_5$V4), names(table(Winners1960_5$V4)),main = "4th Place Outcomes in 1960 @ .5 tribute")
Num_5_1960_5 <- pie(table(Winners1960_5$V5), names(table(Winners1960_5$V5)),main = "5th Place Outcomes in 1960 @ .5 tribute")


NLCommand("set tribute .75")
Winners1960_75 <- data.frame(row.names = c(1:6))
for (i in 1:NumberOfRepetitions)
{
  NLCommand("setupYearGraph")
  NLDoCommand(300, "runOneYear")
  people <- NLGetAgentSet(c("StateNme","wealth"),"turtles", as.data.frame=TRUE)
  people <- arrange(people, desc(wealth))
  Winners <- as.data.frame(head(people$StateNme))
  Winners1960_75 <- as.data.frame(bind_cols(Winners1960_75, Winners))
}

Winners1960_75 <- as.data.frame(t(Winners1960_75))
Num_1_1960_75 <- pie(table(Winners1960_75$V1), names(table(Winners1960_75$V1)),main = "1st Place Outcomes in 1960 @ .75 tribute")
Num_2_1960_75 <- pie(table(Winners1960_75$V2), names(table(Winners1960_75$V2)),main = "2nd Place Outcomes in 1960 @ .75 tribute")
Num_3_1960_75 <- pie(table(Winners1960_75$V3), names(table(Winners1960_75$V3)),main = "3rd Place Outcomes in 1960 @ .75 tribute")
Num_4_1960_75 <- pie(table(Winners1960_75$V4), names(table(Winners1960_75$V4)),main = "4th Place Outcomes in 1960 @ .75 tribute")
Num_5_1960_75 <- pie(table(Winners1960_75$V5), names(table(Winners1960_75$V5)),main = "5th Place Outcomes in 1960 @ .75 tribute")


#########1980############

#########Set the year to 1980
NLCommand("set Year 1980")
NLCommand("set tribute .25")
Winners1980_25 <- data.frame(row.names = c(1:6))
for (i in 1:NumberOfRepetitions)
{
  NLCommand("setupYearGraph")
  NLDoCommand(300, "runOneYear")
  people <- NLGetAgentSet(c("StateNme","wealth"),"turtles", as.data.frame=TRUE)
  people <- arrange(people, desc(wealth))
  Winners <- as.data.frame(head(people$StateNme))
  Winners1980_25 <- as.data.frame(bind_cols(Winners1980_25, Winners))
}

Winners1980_25 <- as.data.frame(t(Winners1980_25))
Num_1_1980_25 <- pie(table(Winners1980_25$V1), names(table(Winners1980_25$V1)),main = "1st Place Outcomes in 1980 @ .25 tribute")
Num_2_1980_25 <- pie(table(Winners1980_25$V2), names(table(Winners1980_25$V2)),main = "2nd Place Outcomes in 1980 @ .25 tribute")
Num_3_1980_25 <- pie(table(Winners1980_25$V3), names(table(Winners1980_25$V3)),main = "3rd Place Outcomes in 1980 @ .25 tribute")
Num_4_1980_25 <- pie(table(Winners1980_25$V4), names(table(Winners1980_25$V4)),main = "4th Place Outcomes in 1980 @ .25 tribute")
Num_5_1980_25 <- pie(table(Winners1980_25$V5), names(table(Winners1980_25$V5)),main = "5th Place Outcomes in 1980 @ .25 tribute")


NLCommand("set tribute .5")
Winners1980_5 <- data.frame(row.names = c(1:6))
for (i in 1:NumberOfRepetitions)
{
  NLCommand("setupYearGraph")
  NLDoCommand(300, "runOneYear")
  people <- NLGetAgentSet(c("StateNme","wealth"),"turtles", as.data.frame=TRUE)
  people <- arrange(people, desc(wealth))
  Winners <- as.data.frame(head(people$StateNme))
  Winners1980_5 <- as.data.frame(bind_cols(Winners1980_5, Winners))
}

Winners1980_5 <- as.data.frame(t(Winners1980_5))
Num_1_1980_5 <- pie(table(Winners1980_5$V1), names(table(Winners1980_5$V1)),main = "1st Place Outcomes in 1980 @ .5 tribute")
Num_2_1980_5 <- pie(table(Winners1980_5$V2), names(table(Winners1980_5$V2)),main = "2nd Place Outcomes in 1980 @ .5 tribute")
Num_3_1980_5 <- pie(table(Winners1980_5$V3), names(table(Winners1980_5$V3)),main = "3rd Place Outcomes in 1980 @ .5 tribute")
Num_4_1980_5 <- pie(table(Winners1980_5$V4), names(table(Winners1980_5$V4)),main = "4th Place Outcomes in 1980 @ .5 tribute")
Num_5_1980_5 <- pie(table(Winners1980_5$V5), names(table(Winners1980_5$V5)),main = "5th Place Outcomes in 1980 @ .5 tribute")


NLCommand("set tribute .75")
Winners1980_75 <- data.frame(row.names = c(1:6))
for (i in 1:NumberOfRepetitions)
{
  NLCommand("setupYearGraph")
  NLDoCommand(300, "runOneYear")
  people <- NLGetAgentSet(c("StateNme","wealth"),"turtles", as.data.frame=TRUE)
  people <- arrange(people, desc(wealth))
  Winners <- as.data.frame(head(people$StateNme))
  Winners1980_75 <- as.data.frame(bind_cols(Winners1980_75, Winners))
}

Winners1980_75 <- as.data.frame(t(Winners1980_75))
Num_1_1980_75 <- pie(table(Winners1980_75$V1), names(table(Winners1980_75$V1)),main = "1st Place Outcomes in 1980 @ .75 tribute")
Num_2_1980_75 <- pie(table(Winners1980_75$V2), names(table(Winners1980_75$V2)),main = "2nd Place Outcomes in 1980 @ .75 tribute")
Num_3_1980_75 <- pie(table(Winners1980_75$V3), names(table(Winners1980_75$V3)),main = "3rd Place Outcomes in 1980 @ .75 tribute")
Num_4_1980_75 <- pie(table(Winners1980_75$V4), names(table(Winners1980_75$V4)),main = "4th Place Outcomes in 1980 @ .75 tribute")
Num_5_1980_75 <- pie(table(Winners1980_75$V5), names(table(Winners1980_75$V5)),main = "5th Place Outcomes in 1980 @ .75 tribute")


#########2007############

#########Set the year to 2007
NLCommand("set Year 2007")
NLCommand("set tribute .25")
Winners2007_25 <- data.frame(row.names = c(1:6))
for (i in 1:NumberOfRepetitions)
{
  NLCommand("setupYearGraph")
  NLDoCommand(300, "runOneYear")
  people <- NLGetAgentSet(c("StateNme","wealth"),"turtles", as.data.frame=TRUE)
  people <- arrange(people, desc(wealth))
  Winners <- as.data.frame(head(people$StateNme))
  Winners2007_25 <- as.data.frame(bind_cols(Winners2007_25, Winners))
}

Winners2007_25 <- as.data.frame(t(Winners2007_25))
Num_1_2007_25 <- pie(table(Winners2007_25$V1), names(table(Winners2007_25$V1)),main = "1st Place Outcomes in 2007 @ .25 tribute")
Num_2_2007_25 <- pie(table(Winners2007_25$V2), names(table(Winners2007_25$V2)),main = "2nd Place Outcomes in 2007 @ .25 tribute")
Num_3_2007_25 <- pie(table(Winners2007_25$V3), names(table(Winners2007_25$V3)),main = "3rd Place Outcomes in 2007 @ .25 tribute")
Num_4_2007_25 <- pie(table(Winners2007_25$V4), names(table(Winners2007_25$V4)),main = "4th Place Outcomes in 2007 @ .25 tribute")
Num_5_2007_25 <- pie(table(Winners2007_25$V5), names(table(Winners2007_25$V5)),main = "5th Place Outcomes in 2007 @ .25 tribute")


NLCommand("set tribute .5")
Winners2007_5 <- data.frame(row.names = c(1:6))
for (i in 1:NumberOfRepetitions)
{
  NLCommand("setupYearGraph")
  NLDoCommand(300, "runOneYear")
  people <- NLGetAgentSet(c("StateNme","wealth"),"turtles", as.data.frame=TRUE)
  people <- arrange(people, desc(wealth))
  Winners <- as.data.frame(head(people$StateNme))
  Winners2007_5 <- as.data.frame(bind_cols(Winners2007_5, Winners))
}

Winners2007_5 <- as.data.frame(t(Winners2007_5))
Num_1_2007_5 <- pie(table(Winners2007_5$V1), names(table(Winners2007_5$V1)),main = "1st Place Outcomes in 2007 @ .5 tribute")
Num_2_2007_5 <- pie(table(Winners2007_5$V2), names(table(Winners2007_5$V2)),main = "2nd Place Outcomes in 2007 @ .5 tribute")
Num_3_2007_5 <- pie(table(Winners2007_5$V3), names(table(Winners2007_5$V3)),main = "3rd Place Outcomes in 2007 @ .5 tribute")
Num_4_2007_5 <- pie(table(Winners2007_5$V4), names(table(Winners2007_5$V4)),main = "4th Place Outcomes in 2007 @ .5 tribute")
Num_5_2007_5 <- pie(table(Winners2007_5$V5), names(table(Winners2007_5$V5)),main = "5th Place Outcomes in 2007 @ .5 tribute")


NLCommand("set tribute .75")
Winners2007_75 <- data.frame(row.names = c(1:6))
for (i in 1:NumberOfRepetitions)
{
  NLCommand("setupYearGraph")
  NLDoCommand(300, "runOneYear")
  people <- NLGetAgentSet(c("StateNme","wealth"),"turtles", as.data.frame=TRUE)
  people <- arrange(people, desc(wealth))
  Winners <- as.data.frame(head(people$StateNme))
  Winners2007_75 <- as.data.frame(bind_cols(Winners2007_75, Winners))
}

Winners2007_75 <- as.data.frame(t(Winners2007_75))
Num_1_2007_75 <- pie(table(Winners2007_75$V1), names(table(Winners2007_75$V1)),main = "1st Place Outcomes in 2007 @ .75 tribute")
Num_2_2007_75 <- pie(table(Winners2007_75$V2), names(table(Winners2007_75$V2)),main = "2nd Place Outcomes in 2007 @ .75 tribute")
Num_3_2007_75 <- pie(table(Winners2007_75$V3), names(table(Winners2007_75$V3)),main = "3rd Place Outcomes in 2007 @ .75 tribute")
Num_4_2007_75 <- pie(table(Winners2007_75$V4), names(table(Winners2007_75$V4)),main = "4th Place Outcomes in 2007 @ .75 tribute")
Num_5_2007_75 <- pie(table(Winners2007_75$V5), names(table(Winners2007_75$V5)),main = "5th Place Outcomes in 2007 @ .75 tribute")


######This is to get the individual runs
###First is 1945
ExperimentLength <- 100
NLCommand("set Year 1945")
NLCommand("set tribute .5")
NLCommand("setupYearGraph")
numTurtles <- NLReport("count turtles")

results <- data.frame()
##Start Experiment
results <- NLGetAgentSet(c("StateNme"),"turtles")
results <- arrange(results, StateNme)
ColumnNames <- as.data.frame((results[,1]))
colnames(results <- ColumnNames)
results <- as.data.frame(t(results))
for (i in 1:ExperimentLength)
{
  NLCommand("runOneYear")
  people <- NLGetAgentSet(c("StateNme","wealth"),"turtles", as.data.frame=TRUE)
  people <- t(arrange(people, StateNme))
  people <- as.data.frame(people)
  people <- as.data.frame(people[2,])
  results <- bind_rows(results, people)
}

#Blue is USA
plot(results[,60],type="l",col="blue",main="1945")
par(new=T)
#Red is Japan
plot(results[,35],type="l",col="red")
par(new=T)
#Green is Germany
plot(results[,24],type="l",col="green")
par(new=T)
#Orange is United Kingdom
plot(results[,59],type="l",col="orange")
par(new=T)
#Yellow is France
plot(results[,23],type="l",col="yellow")
par(new=T)
#Brown is Russia
plot(results[,51],type="l",col="brown")
par(new=F)

#######1960######
NLCommand("set Year 1960")
NLCommand("set tribute .5")
NLCommand("setupYearGraph")
numTurtles <- NLReport("count turtles")

results <- data.frame()
##Start Experiment
results <- NLGetAgentSet(c("StateNme"),"turtles")
results <- arrange(results, StateNme)
ColumnNames <- as.data.frame((results[,1]))
colnames(results <- ColumnNames)
results <- as.data.frame(t(results))
for (i in 1:ExperimentLength)
{
  
  NLCommand("runOneYear")
  people <- NLGetAgentSet(c("StateNme","wealth"),"turtles", as.data.frame=TRUE)
  people <- t(arrange(people, StateNme))
  people <- as.data.frame(people)
  people <- as.data.frame(people[2,])
  results <- bind_rows(results, people)
}


#Blue is USA
plot(results[,104],type="l",col="blue",main="1960")
par(new=T)
#Red is China
plot(results[,18],type="l",col="red")
par(new=T)
#Green is German Federal Republic
plot(results[,36],type="l",col="green")
par(new=T)
#Orange is United Kingdom
plot(results[,103],type="l",col="orange")
par(new=T)
#Yellow is France
plot(results[,18],type="l",col="yellow")
par(new=T)
#Brown is Russia
plot(results[,18],type="l",col="brown")
par(new=F)

######1980######
NLCommand("set Year 1980")
NLCommand("set tribute .5")
NLCommand("setupYearGraph")
numTurtles <- NLReport("count turtles")

results <- data.frame()
##Start Experiment
results <- NLGetAgentSet(c("StateNme"),"turtles")
results <- arrange(results, StateNme)
ColumnNames <- as.data.frame((results[,1]))
colnames(results <- ColumnNames)
results <- as.data.frame(t(results))
for (i in 1:ExperimentLength)
{
  NLCommand("runOneYear")
  people <- NLGetAgentSet(c("StateNme","wealth"),"turtles", as.data.frame=TRUE)
  people <- t(arrange(people, StateNme))
  people <- as.data.frame(people)
  people <- as.data.frame(people[2,])
  results <- bind_rows(results, people)
}

#Blue is USA
plot(results[,149],type="l",col="blue",main="1980")
par(new=T)
#Red is China
plot(results[,28],type="l",col="red")
par(new=T)
#Green is German Federal Republic
plot(results[,52],type="l",col="green")
par(new=T)
#Orange is United Kingdom
plot(results[,148],type="l",col="orange")
par(new=T)
#Yellow is France
plot(results[,48],type="l",col="yellow")
par(new=T)
#Brown is Russia
plot(results[,115],type="l",col="brown")
par(new=F)


######2007######
NLCommand("set Year 2007")
NLCommand("set tribute .5")
NLCommand("setupYearGraph")
numTurtles <- NLReport("count turtles")

results <- data.frame()
##Start Experiment
results <- NLGetAgentSet(c("StateNme"),"turtles")
results <- arrange(results, StateNme)
ColumnNames <- as.data.frame((results[,1]))
colnames(results <- ColumnNames)
results <- as.data.frame(t(results))
for (i in 1:ExperimentLength)
{
  NLCommand("runOneYear")
  people <- NLGetAgentSet(c("StateNme","wealth"),"turtles", as.data.frame=TRUE)
  people <- t(arrange(people, StateNme))
  people <- as.data.frame(people)
  people <- as.data.frame(people[2,])
  results <- bind_rows(results, people)
}

#Blue is USA
plot(results[,185],type="l",col="blue",main="2007")
par(new=T)
#Red is China
plot(results[,36],type="l",col="red")
par(new=T)
#Green is Germany
plot(results[,66],type="l",col="green")
par(new=T)
#Orange is United Kingdom
plot(results[,184],type="l",col="orange")
par(new=T)
#Yellow is Japan
plot(results[,87],type="l",col="yellow")
par(new=T)
#Brown is Russia
plot(results[,143],type="l",col="brown")
par(new=F)


###Use this code to write and export a csv file to a selected place on your computer
setwd('C:/Users/Harold/Documents/CSS/CSS610/Global Actors Research')
write.csv(results, file = "MyTemporaryData.csv")


