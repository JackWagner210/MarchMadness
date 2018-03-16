library(openxlsx); library(shiny); library(ggthemes); library(ggplot2); library(reshape) # I would stop the world to melt(0 with you)
#library(grid) # to make the ticks face inward
#pre data


mydata<-read.xlsx("031518 March Madness - 2018.xlsx", 
                  sheet = 1, 
                  startRow = 1, 
                  colNames = TRUE)


mydata$Region <- as.factor(mydata$Region)
summary(mydata)
mydata <- subset(mydata, Region != "NIT")
mydata <- subset(mydata, Region != "out") # UCLA is out, right?
#mydata <- c(Data2018$BPI) #Basketball power index
#RPI17 <- c(Data2017$RPI)

#final data
#BBI18 <- c(Data2018$Composite)
#plot(mydata, type = "o", col = "red", font.main = 4)
#plot(RPI17, type = "o", col = "blue", font.main = 4)


myplot <- ggplot(mydata, 
                 aes(x = reorder(School, --Composite),
                     y = Composite)) +
  theme_few() + facet_grid(.~Region) + 
  scale_x_discrete("School")+
  scale_y_continuous("Composite")+
  coord_flip()
myplot + geom_bar(stat = "identity")
ggsave("031518 March Madness School Composite.png", height = 8, width = 5.5)

myplot <- ggplot(mydata, 
                 aes(x = reorder(School, --APG.Rank),
                     y = APG.Rank)) +
  theme_few() + facet_grid(.~Region) +
  scale_x_discrete("School")+
  coord_flip()
myplot + geom_bar(stat = "identity")
ggsave("031518 March Madness School APG.Rank.png", height = 8, width = 5.5)


myplot <- ggplot(mydata, 
                 aes(x = reorder(School, --PPG.Rank),
                     y = PPG.Rank)) +
  theme_few() + facet_grid(.~Region) +
  scale_x_discrete("School")+
  coord_flip()
myplot + geom_bar(stat = "identity")
ggsave("031518 March Madness School PPG.Rank.png", height = 8, width = 5.5)

myplot <- ggplot(mydata, 
                 aes(x = reorder(School, --TOPG.Rank),
                     y = TOPG.Rank)) +
  theme_few() + facet_grid(.~Region) +
  scale_x_discrete("School")+
  scale_y_discrete("Turnovers per game")+
  coord_flip()
myplot + geom_bar(stat = "identity")
ggsave("031518 March Madness School TOPG.Rank.png", height = 8, width = 5.5)

myplot <- ggplot(mydata, 
                 aes(x = reorder(School, --BPI),
                     y = BPI)) +
  theme_few() + facet_grid(.~Region) +
  scale_x_discrete("School")+
  scale_y_continuous("ESPN basketball power index")+
  coord_flip()
myplot + geom_bar(stat = "identity")
ggsave("031518 March Madness School BPI.png", height = 8, width = 5.5)

myplot <- ggplot(mydata, 
                 aes(x = reorder(School, --RPG.Rank),
                     y = RPG.Rank)) +
  theme_few() + facet_grid(.~Region) +
  scale_x_discrete("School")+
  coord_flip()
myplot + geom_bar(stat = "identity")
ggsave("031518 March Madness School RPG.Rank.png", height = 8, width = 5.5)

myplot <- ggplot(mydata, 
                 aes(x = reorder(School, --FT..Rank),
                     y = FT..Rank)) +
  theme_few() + facet_grid(.~Region) +
  scale_x_discrete("School")+
  coord_flip()
myplot + geom_bar(stat = "identity")
ggsave("031518 March Madness School FT..Rank.png", height = 8, width = 5.5)

myplot <- ggplot(mydata, 
                 aes(x = reorder(School, --Conference.Power),
                     y = Conference.Power)) +
  theme_few() + facet_grid(.~Region) +
  scale_x_discrete("School")+
  scale_y_discrete("Conference power")+
  coord_flip()
myplot + geom_bar(stat = "identity")
ggsave("031518 March Madness School Conference.Power.png", height = 8, width = 5.5)

myplot <- ggplot(mydata, 
                 aes(x = reorder(School, --SOS),
                     y = SOS)) +
  theme_few() + facet_grid(.~Region) +
  scale_x_discrete("School")+
  scale_y_continuous("Strength of schedule")+
  coord_flip()
myplot + geom_bar(stat = "identity")
ggsave("031518 March Madness School SOS.png", height = 8, width = 5.5)

myplot <- ggplot(mydata, 
                 aes(x = reorder(School, -Opp.PPG.Rank),
                     y = Opp.PPG.Rank)) +
  theme_few() + facet_grid(.~Region) +
  scale_x_discrete("School")+
  scale_y_continuous("Opponent points per game rank")+
  coord_flip()
myplot + geom_bar(stat = "identity")
ggsave("031518 March Madness School Opp.PPG.Rank.png", height = 8, width = 5.5)

myplot <- ggplot(mydata, 
                 aes(x = reorder(School, --APG.Rank),
                     y = APG.Rank)) +
  theme_few() + facet_grid(.~Region) +
  scale_x_discrete("School")+
  scale_y_continuous("Assists per game rank")+
  coord_flip()
myplot + geom_bar(stat = "identity")
ggsave("031518 March Madness School APG.Rank.png", height = 8, width = 5.5)

myplot <- ggplot(mydata, 
                 aes(x = reorder(School, -Losses),
                     y = Losses)) +
  theme_few() + facet_grid(.~Region) +
  scale_x_discrete("School")+
  scale_y_continuous("Losses")+
  coord_flip()
myplot + geom_bar(stat = "identity")
ggsave("031518 March Madness School Losses.png", height = 8, width = 5.5)

myplot <- ggplot(mydata, 
                 aes(x = reorder(School, -EOS.Conf),
                     y = EOS.Conf)) +
  theme_few() + facet_grid(.~Region) +
  scale_x_discrete("School")+
  scale_y_continuous("End of season conference rank")+
  coord_flip()
myplot + geom_bar(stat = "identity")
ggsave("031518 March Madness School EOS.Conf.png", height = 8, width = 5.5)


myplot <- ggplot(mydata, 
                 aes(x = reorder(School, --PPG/Opp.PPG),
                     y = PPG,
                     fill = Opp.PPG)) +
  scale_fill_gradient(low = "black", high = "white", name = "Opponent points\nper game")+
  theme_few() + facet_grid(.~Region) +
  scale_x_discrete("School")+
  scale_y_continuous("Points per game")+
  coord_flip()
myplot + geom_bar(stat = "identity")
ggsave("031518 March Madness School PPG indexed by Opp.PPG.png", height = 8, width = 5.5)

summary(mydata)
