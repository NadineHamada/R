# l'algo est sensible aux choix initiale 
# solution on répette jusqu'à stabilité de resultat ou elimination de bruit 
data("iris")
iris
iris.3means<-kmeans(iris[1:4],3)
# interpretation: 
# ce sont la moy donc elimination de nbre d individu
# la taille du groupe n'affecte pas le résultat 
# l'affectation 
iris.3means$cluster
# 
iris.3means$centers
#
iris.3means$withinss

# comparer avec le test de fischer one way annova car j'ai n- échantillon 
# on focus sur fischer et pas p-valus il faut  fischer elevé 
# fischer sur des variable quantitative ACP (analyse factorielle)
# fischer sur des variable qualitative FCM (analyse factorielle) # idée : au lieu de faire +eurs itérations sur les varialbes 
# On remplace par une seule variable significative 

## correction d'exercice 
# comment choisir nbre de feature à diminuer