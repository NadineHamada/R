# on veut dégager quel sont les composantes fortes de decathlon
library(factoextra)
library(FactoMineR)
data(decathlon)
str(decathlon)
summary(decathlon)
# Avec summary() il dégage une description pour quelle raison :
# pour donner une idée sur les donnés à netouyer
# (par exemple il donne combien de valeur manquante pour chaque jeu de donnés)

# on va travailler sur les individus et les variables actives
dec.active<-decathlon[,1:10]
 
#ACP appliqué pour ce jeu de donnés:
anal<-PCA(dec.active,scale.unit = T,ncp=5,graph = T, axes=c(1,2))
# scale.unit = T cad true la standirisation est true tj true
# ncp=5 nbre de composantes

anal$eig 
# si on applique kaiser on prend les 4 premiers components 
anal$var$coord
# voir les axes factorielle : 10 parceque on a 10 vars
fviz_eig(anal)
# la qualité de ACP KMNO :
library(psych)
KMO(dec.active)
# kmo= 0.6<0.8 et =0.6  donc kaiser est acceptable 
# Barklette test 
bartlett.test(dec.active)
# p-value <  alors refuser ho

# Analyse sur variable et analyse sur individue 
anal$var
anal$ind

