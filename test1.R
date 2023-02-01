#On charge les packages requis
library(lmerTest)
library(emmeans)
library(ggplot2)
library(multcomp)
library(multcompView)

#On importe un jeu de données par defaut
data("iris")

#On vérifie la distribution générale des données
summary(iris)
#On vérifie les NA dans la base de donnée
which(is.na(iris))
#On vérifie les outliers via des boxplots - Sepal.Length
ggplot(iris, aes(x=Sepal.Length))+
  geom_bar()+
  scale_y_continuous(breaks=seq(0,10,1))

