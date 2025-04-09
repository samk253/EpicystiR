{\rtf1\ansi\ansicpg1252\cocoartf2821
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww31680\viewh19360\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0 # EpicystiR: S\'e9ropr\'e9valence de la cysticercose humaine en milieu rural du sud-est de la C\'f4te d'Ivoire\
\
## Description du Projet\
\
Ce projet pr\'e9sente une \'e9tude sur la s\'e9ropr\'e9valence de la cysticercose humaine dans les zones rurales des d\'e9partements de Dabou et Agboville en C\'f4te d'Ivoire. Les donn\'e9es ont \'e9t\'e9 collect\'e9es \'e0 travers des enqu\'eates transversales bas\'e9es sur la population.\
\
## Contenu du D\'e9p\'f4t\
\
### Bases de Donn\'e9es\
\
1. **EpicystiR_Dabou.csv**: Donn\'e9es collect\'e9es dans le d\'e9partement de Dabou.\
2. **EpicystiR_Agboville.csv**: Donn\'e9es collect\'e9es dans le d\'e9partement d'Agboville.\
3. **EpicystiR_Total.csv**: Donn\'e9es combin\'e9es des deux d\'e9partements.\
4. **EpicystiR_Env.csv**: Donn\'e9es d\'92observation de environnement imm\'e9diat des m\'e9nages visit\'e9s lors de enqu\'eates.\
\
### Scripts d'Analyse\
\
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 - **EpicystyR_Dabou_Code analyse.do**: Script d'analyse pour les donn\'e9es de Dabou.\
- **EpicystyR_Agboville_Code analyse.do**: Script d'analyse pour les donn\'e9es d'Agboville.\
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 - **EpicystiR_Total_Env_code analyse.do**: Script d'analyse pour les donn\'e9es combin\'e9es et pour celles de l\'92observation de l\'92environnement des m\'e9nages.\
\
### Dictionnaires de Donn\'e9es\
\
#### EpicystiR_Dabou et EpicystiR_Agboville\
\
| Variable Name | Variable Label                      |\
|---------------|-------------------------------------|\
| id            | Identifier number                  |\
| dte           | Survey's date                      |\
| village       | Village                            |\
| grap          | Cluster                            |\
| spref/zone    | Area of residence                  |\
| sexe          | Sex                                |\
| age           | Age                                |\
| age_cat       | Age group                          |\
| ancien        | Length of time in village          |\
| etude         | Level of education                 |\
| instruit      | Educated                           |\
| muslim        | Muslim religion                   |\
| cephal        | Recurrent headaches                |\
| crisepi       | Concept of epileptic seizure       |\
| epifam        | Concept of epilepsy in the family  |\
| vers          | Concept of history of intestinal worms |\
| depara        | History of taking anti-parasitic   |\
| tenia         | Knowledge about tapeworm           |\
| cmodet        | Knowledge of tapeworm transmission |\
| cyst          | Awareness of cysticercosis         |\
| lmain         | Hand washing                       |\
| pleinair      | Open-air defecation                |\
| typ_eau       | Tap water consumption              |\
| pluie         | Rainwater consumption              |\
| lavcrudi      | Washing raw vegetables before consumption |\
| cporc         | Pork consumption                   |\
| prelev        | Blood collected                    |\
| elisa         | ELISA test                         |\
| wb            | Western Blot test                  |\
| cysti         | Cysticercosis serology             |\
| pds           | Sampling weight                    |\
| t_grap        | Number of persons in the cluster   |\
| t_vilag       | Village's population               |\
\
#### EpicystiR_Total\
\
| Variable Name | Variable Label                      |\
|---------------|-------------------------------------|\
| id            | Identifier number                  |\
| dte           | Survey's date                      |\
| departement   | Department                         |\
| zone2         | Area of residence                  |\
| age           | Age                                |\
| age_cat       | Age group                          |\
| sexe          | Sex                                |\
| instruit      | Educated                           |\
| etude         | Level of education                 |\
| muslim        | Muslim religion                   |\
| ancien        | Length of time in village          |\
| lmain         | Hand washing                       |\
| lavcrudi      | Washing raw vegetables before consumption |\
| typ_eau       | Tap water consumption              |\
| pluie         | Rainwater consumption              |\
| cporc         | Pork consumption                   |\
| pleinair      | Open-air defecation                |\
| cysti         | Cysticercosis serology             |\
\
#### EpicystiR_Env\
\
| Variable Name | Variable Label                      |\
|---------------|-------------------------------------|\
| idf           | Household's identifier              |\
| dte           | Survey's date                      |\
| departement   | Department                         |\
| vilag         | Village                            |\
| resident      | Number of household members        |\
| potable       | Presence of drinking water supply point |\
| main          | Presence of hand-washing facility   |\
| latrine       | Presence of latrines in household   |\
| ordures       | Presence of wild garbage dumps      |\
| porcheri      | Nearby pig farm                    |\
\
## Instructions d'Utilisation\
\
1. **Cloner le D\'e9p\'f4t**:\
   ```bash\
   git clone https://github.com/votre-utilisateur/EpicystiR.git\
   cd EpicystiR\
}