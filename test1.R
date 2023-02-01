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
#On vérifie les outliers via des boxplots -pour la variable Sepal.Length
ggplot(iris, aes(x=Sepal.Length))+
  geom_bar()+
  scale_y_continuous(breaks=seq(0,10,1))+
  facet_grid(~Species)
#D'après outputs, les conclusions sur les données Sepal.Length sont:
#1. Pas de NA à éliminer
#2. On élimine les individus de l'espèce "Setosa" car les valeurs pour cette espèce sont plus faibles
irisSP <- subset(iris, Species != "setosa")
#3. On élimine les individus avec Sepal.Lenght >= 7.8
irisSP <- subset(irisSP, Sepal.Length <=7.8)
