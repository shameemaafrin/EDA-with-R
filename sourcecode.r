library(ggplot2)

tordata <- read.csv(file = "1950-2020_actual_tornadoes.csv",as.is=TRUE, header=TRUE)
tordata

#Displays few data
str(tordata)
sort(tordata$mo)

#Histogram to show months
hist(tordata$mo,col=(10))

#Box plot to show months
boxplot(tordata$mo)

#Month Magnitude
ggplot(tordata,aes(x=mo,fill=mag))+
  geom_bar(color="black",fill="red")+
  labs(x = "Month",y = "Magitude",title = "Month and Magnitude ")+
  theme(legend.position = 'top')

#State
ggplot(tordata,aes(x=st,fill=stn))+
  geom_bar(color="black",fill="red")+
  labs(x = "States",y = "Number of times",title = "Tornado occurances in different states")+
  theme(legend.position = 'top')

#Years
hist(tordata$yr,col=(10))

#Magnitude
hist(tordata$mag,col=(10))

#Graph to show States with fatalities and injuries
ggplot(tordata, aes(st)) +    
  geom_line(aes(y=inj), colour="red") +  # first layer
  geom_line(aes(y=fat), colour="black")

a <- ggplot(tordata, aes(st))
a <- a + geom_line(aes(y=inj), colour="red")
a <- a + geom_line(aes(y=fat), colour="black")
a <- a + ylab("FATALITIES AND INJURIES") + xlab("STATES")
a





