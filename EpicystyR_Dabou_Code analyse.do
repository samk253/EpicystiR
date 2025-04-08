clear
clear matrix
*Ouvrir le fichier résultat (.log)
log using "/Users/.../Epicysti R_Dabou.log"

***************************************************************************************
*****Epidémiologie de la cysticercose en milieu rural dans le departement de Dabou*****
***************************************************************************************

*Ouvrir le fichier de données
use "/Users/..../Epicysti R_Dabou.dta"

*Configurer l'information du plan de sondage pour l'utiliser avec le préfixe svy
svyset village [pweight=pds], vce(linearized) singleunit(missing) || grap

/*Après avoir déclaré le plan de sondage: le niveau 1 étant considere comme 
un TAS avec remise, le niveau 2 a été ignoré dans le design*/

*Tableau de fréquence (pour la description de la population de l'étude). 
*Fréquences observées
tab1 village sexe age_cat etude instruit muslim cysti
sum age, detail

*Fréquences ajustées à la méthode de sondage
svy linearized : tabulate sexe, cell se ci obs percent
svy linearized : tabulate age_cat, cell se ci obs percent
svy linearized : tabulate instruit, cell se ci obs percent
svy linearized : tabulate etude, cell se ci obs percent
svy linearized : tabulate muslim, cell se ci obs percent
svy linearized : tabulate cysti, cell se ci obs percent
svy linearized : tabulate village, cell se ci obs percent
svy linearized : mean age

*Tableaux croisés de la sérologie avec les variables indépendantes (analyse bivariée)
*Caractéristiques socio-démographiques
** Le sexe
svy linearized : tabulate sexe cysti, row obs column percent pearson lr wald
svy : logistic cysti sexe

** l'âge
sort cysti
svy linearized : mean age, over(cysti)
svy : logistic cysti age

svy linearized : tabulate age_cat cysti, row obs column percent pearson lr wald
svy : logistic cysti i.age_cat

**Le niveau d'éducation 
svy linearized : tabulate instruit cysti, row obs column percent pearson lr wald
svy : logistic cysti scolaire

svy linearized : tabulate etude cysti, row obs column percent pearson lr wald
svy : logistic cysti i.etude

**La religion
svy linearized : tabulate muslim cysti, row obs column percent pearson lr wald
svy : logistic cysti muslim

** La résidence
svy linearized : tabulate spref cysti, row obs column percent pearson lr wald
svy : logistic cysti i.spref

*Données de séroprévalence de la cysticercose par village pour la réalisation de la carte
svy linearized : tabulate village cysti, row obs column percent 

**Ancienneté dans le village
svy linearized : tabulate ancien cysti, row obs column percent pearson lr wald
svy : logistic cysti i.ancien


*Antécédants 
**Neurologiques   
svy linearized : tabulate cephal cysti, row obs column percent pearson lr wald
svy : logistic cysti cephal

svy linearized : tabulate crisepi cysti, row obs column percent pearson lr wald 
svy : logistic cysti crisepi

svy linearized : tabulate epifam cysti, row obs column percent pearson lr wald 
svy : logistic cysti epifam

**Parasitoses
svy linearized : tabulate vers cysti, row obs column percent pearson lr wald
svy : logistic cysti vers

svy linearized : tabulate depara cysti, row obs column percent pearson lr wald 
svy : logistic cysti depara


*Connaissances du complexe téniase/cysticercose 
svy linearized : tabulate tenia cysti, row obs column percent pearson lr wald
svy : logistic cysti tenia

svy linearized : tabulate cmodet cysti, row obs column percent pearson lr wald
svy : logistic cysti i.cmodet

svy linearized : tabulate cyst cysti, row obs column percent pearson lr wald
svy : logistic cysti cyst


*Variables de l'hygiène des personnes et des aliments
**Respect des trois temps de lavage des mains
svy linearized : tabulate lmain cysti, row obs column percent pearson lr wald
svy : logistic cysti lmain

**Défécation à l'air libre (pas un facteur de risque pour l'individu mais il expose les autres)
svy linearized : tabulate pleinair cysti, row obs column percent pearson lr wald 
svy : logistic cysti pleinair

**Type d'eau de boisson
svy linearized : tabulate typ_eau cysti, row obs column percent pearson lr wald
svy : logistic cysti typ_eau

**Hygiène des aliments et mode de consommation de la viande de porc
svy linearized : tabulate lavcrudi cysti, row obs column percent pearson lr wald
svy : logistic cysti i.lavcrudi

svy linearized : tabulate cporc cysti, row obs column percent pearson lr wald
svy : logistic cysti i.cporc


/*Analyse multivariée
** Les varialbes sélectionnees pour l'analyse multivatiables sont celles qui sont 
associees à la variable dependante au seuil de 20%. Nous n'avons pas soupçonne de vaviable de confusion*/
svy linearized : logistic cysti sexe i.age_cat instruit muslim i.spref cyst typ_eau i.cporc, cformat(%9.2f) pformat(%5.3f)
svy linearized : logistic cysti sexe i.age_cat instruit i.spref cyst typ_eau i.cporc, cformat(%9.2f) pformat(%5.3f)
svy linearized : logistic cysti sexe i.age_cat instruit i.spref cyst i.cporc, cformat(%9.2f) pformat(%5.3f)
svy linearized : logistic cysti sexe i.age_cat i.spref cyst i.cporc, cformat(%9.2f) pformat(%5.3f)
svy linearized : logistic cysti sexe i.spref cyst i.cporc, cformat(%9.2f) pformat(%5.3f)
svy linearized : logistic cysti i.spref cyst i.cporc, cformat(%9.2f) pformat(%5.3f)

estat gof

log close









