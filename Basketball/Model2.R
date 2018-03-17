library(ggplot2)
library(ggthemes)


#   INPUT   #
BPI18 <- read.csv("March Madness - 2018.csv")
BPI18 <- data.frame(BPI18)
summary(BPI18)


#   COMPOSITE BBI   #
myplot <- ggplot(BPI18, 
                 aes(x = reorder(School, --Composite),
                     y = Composite)) + theme_light() + scale_x_discrete("School") + scale_y_continuous("BBI COMPOSITE") + coord_flip()
myplot + geom_bar(stat = "identity")
ggsave("031418 March Madness School Composite.png", height = 8, width = 5.5)

#   APG RANK    #
myplot <- ggplot(BPI18, 
                 aes(x = reorder(School, --APG.Rank),
                     y = APG.Rank)) + theme_light() + scale_x_discrete("School") + scale_y_continuous("APG Rank") + coord_flip()
myplot + geom_bar(stat = "identity")
ggsave("031418 March Madness School APG.Rank.png", height = 8, width = 5.5)

#   APG  #
myplot <- ggplot(BPI18, 
                 aes(x = reorder(School, --APG),
                     y = APG)) + theme_light() + scale_x_discrete("School") + scale_y_continuous("APG") + coord_flip()
myplot + geom_bar(stat = "identity")
ggsave("031418 March Madness School APG.png", height = 8, width = 5.5)

#   PPG    #
myplot <- ggplot(BPI18, 
                 #aes(x = reorder(School, --PPG),
                 aes(x = reorder(School, --PPG/Opp.PPG),
                     y = PPG,
                     fill = Opp.PPG)) +
  scale_fill_gradient(low = "#9e1b32", high = "#828a8f", name = "Opponent points\nper game")+
  theme_tufte () +
  scale_x_discrete("School")+
  scale_y_continuous("Points per game")+
  coord_flip()
myplot + geom_bar(stat = "identity")
ggsave("031418 March Madness School PPG over OPP.png", height = 8, width = 5.5)

#   PPG Rank #
myplot <- ggplot(BPI18, 
                 aes(x = reorder(School, --PPG.Rank),
                     y = PPG.Rank)) + theme_light() + scale_x_discrete("School") + scale_y_continuous("PPG Rank") +  coord_flip()
myplot + geom_bar(stat = "identity")
ggsave("031418 March Madness School PPGRank.png", height = 8, width = 5.5)

#   TURNOVERS PG    #
myplot <- ggplot(BPI18, 
                 aes(x = reorder(School, --TOPG.Rank),
                     y = TOPG.Rank)) + theme_light() + scale_x_discrete("School") + scale_y_discrete("Turnovers per game") + coord_flip()
myplot + geom_bar(stat = "identity")
ggsave("031418 March Madness School TOPG.Rank.png", height = 8, width = 5.5)
#   BPI   #
myplot <- ggplot(BPI18, 
                 aes(x = reorder(School, --BPI),
                     y = BPI)) + theme_light() + scale_x_discrete("School") + scale_y_continuous("ESPN basketball power index") + coord_flip()
myplot + geom_bar(stat = "identity")
ggsave("031418 March Madness School BPI.png", height = 8, width = 5.5)

#   RPG RANK    #
myplot <- ggplot(BPI18, 
                 aes(x = reorder(School, --RPG.Rank),
                     y = RPG.Rank)) + theme_light() + scale_x_discrete("School") + scale_y_continuous("RPG Rank") + coord_flip()
myplot + geom_bar(stat = "identity")
ggsave("031418 March Madness School RPG.Rank.png", height = 8, width = 5.5)

#   RPG    #
myplot <- ggplot(BPI18, 
                 aes(x = reorder(School, --RPG),
                     y = RPG)) + theme_light() + scale_x_discrete("School") + scale_y_continuous("RPG") + coord_flip()
myplot + geom_bar(stat = "identity")
ggsave("031418 March Madness School RPG.png", height = 8, width = 5.5)

#   FT RANK   #
myplot <- ggplot(BPI18, 
                 aes(x = reorder(School, --FT..Rank),
                     y = FT..Rank)) +
  theme_light() + scale_x_discrete("School") + coord_flip()
myplot + geom_bar(stat = "identity")
ggsave("031418 March Madness School FT..Rank.png", height = 8, width = 5.5)

#   OPP. PPG    #
myplot <- ggplot(BPI18, 
                 aes(x = reorder(School, --Conference.Power),
                     y = Conference.Power)) + theme_light() + scale_x_discrete("School") + coord_flip()
myplot + geom_bar(stat = "identity")
ggsave("031418 March Madness School Conference.Power.png", height = 8, width = 5.5)


#   STR. OF SCHEDULE    #
myplot <- ggplot(BPI18, 
                 aes(x = reorder(School, --SOS),
                     y = SOS)) + theme_light() + scale_x_discrete("School") + scale_y_continuous("Strength of schedule") + coord_flip()
myplot + geom_bar(stat = "identity")
ggsave("031418 March Madness School SOS.png", height = 8, width = 5.5)

#   OPP. PPG    #
myplot <- ggplot(BPI18, 
                 aes(x = reorder(School, -Opp.PPG),
                     y = Opp.PPG)) + theme_light() + scale_x_discrete("School") + scale_y_continuous("Opponent points per game rank") + coord_flip()
myplot + geom_bar(stat = "identity")
ggsave("031418 March Madness School Opp.PPG.png", height = 8, width = 5.5)

#   OPP. PPG rank   #
myplot <- ggplot(BPI18, 
                 aes(x = reorder(School, -Opp.PPG.Rank),
                     y = Opp.PPG.Rank)) + theme_light() + scale_x_discrete("School") + scale_y_continuous("Opponent points per game rank") + coord_flip()
myplot + geom_bar(stat = "identity")
ggsave("031418 March Madness School Opp.PPG.Rank.png", height = 8, width = 5.5)


#   APG RANK    #
myplot <- ggplot(BPI18, 
                 aes(x = reorder(School, --APG.Rank),
                     y = APG.Rank)) + theme_light() + scale_x_discrete("School") + scale_y_continuous("Assists per game rank") + coord_flip()
myplot + geom_bar(stat = "identity")
ggsave("031418 March Madness School APG.Rank.png", height = 8, width = 5.5)


#   LOSSES    #
myplot <- ggplot(BPI18, 
                 aes(x = reorder(School, -Losses),
                     y = Losses)) + theme_light() + scale_x_discrete("School") + scale_y_continuous("Losses") + coord_flip()
myplot + geom_bar(stat = "identity")
ggsave("031418 March Madness School Losses.png", height = 8, width = 5.5)

#   EOS CONF RANK   #
myplot <- ggplot(BPI18, 
                 aes(x = reorder(School, -EOS.Conf),
                     y = EOS.Conf)) + theme_light() + scale_x_discrete("School") + scale_y_continuous("End of season conference rank") + coord_flip()
myplot + geom_bar(stat = "identity")
ggsave("031418 March Madness School EOS.Conf.png", height = 8, width = 5.5)
