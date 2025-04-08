
***Description des caracteristiques des villages dans les départements de Dabou et d'Agboville***
use "/Users/.../EpicystiR_Total.dta"

/*Caractéristiques socio-demographiques des popualtions ruales dans les departements 
de Dabou et d'Agboville selon la sérologie cysticerquienne*/
sort departe
by departe: sum age, detail
ttest age, by (departe)

sort cysti
tab sexe departe, col row chi2 
by cysti : tab sexe departe, col row chi2

tab age_cat departe, col row chi2 
by cysti : tab age_cat departe, col row chi2

tab muslim departe, col row chi2
by cysti : tab muslim departe, col row chi2

tab etude departe, col row chi2
by cysti : tab etude departe, col row chi2

tab instruit departe, col row chi2
by cysti : tab instruit departe, col row chi2

tab ancien departe, col row exp chi2 
by cysti : tab ancien departe, col row chi2

*Hygiène de vie
tab lmain departe, col row chi2
by cysti : tab lmain departe, col row chi2

tab typ_eau departe, col row chi2
by cysti : tab typ_eau departe, col row chi2

tab pluie departe, col row chi2
by cysti : tab pluie departe, col row chi2

tab lavcrudi departe, col row chi2
by cysti : tab lavcrudi departe, col row chi2

tab cporc departe, col row chi2
by cysti : tab cporc departe, col row chi2

tab pleinair departe, col row chi2
sort cysti
by cysti : tab pleinair departe, col row chi2

***Description de l'environnement immediat des menages inclus dans les etudes
					   
use "/Users/.../EpicystiR_Env.dta"

*Effectif des menages visites
sort departe
by departe: sum resident, detail
ttest resident, by (departe)

*Environnement des menages       
tab canivo departe, col row exp chi2 exact
tab ruissel departe, col row exp chi2 exact
tab evacu departe, col row exp chi2 exact
tab ordures departe, col row exp chi2 exact
tab porcheri departe, col row exp chi2 exact
tab latrine departe, col row exp chi2 exact
tab potable departe, col row exp chi2 exact
tab main departe, col row exp chi2 exact


*Caractéristiques environnementales et mode de vie selon la zone de redidence dans le département de Dabou (05/03/25)
*Effectif des menages visites
sort zone
by zone: sum resident if departe == 1, detail
kwallis resident, by (spref)


log close
