# 🧪 EpicystiR: Seroprevalence of Human Cysticercosis in Rural Areas of Southeastern Côte d'Ivoire

## 📘 Project Description

**EpicystiR** is a research project focused on the **seroprevalence of human cysticercosis** in rural areas of **Dabou** and **Agboville** departments in Côte d’Ivoire.  
Data were collected through **population-based cross-sectional surveys**.

---

## 📁 Repository Content

### 🗃️ Data Files

- `EpicystiR_Dabou.csv`: Data collected in the Dabou department.
- `EpicystiR_Agboville.csv`: Data collected in the Agboville department.
- `EpicystiR_Total.csv`: Combined data from both departments.
- `EpicystiR_Env.csv`: Environmental observations around surveyed households.

### 📜 Analysis Scripts

- `EpicystyR_Dabou_Code analyse.do`: Analysis of Dabou data.
- `EpicystyR_Agboville_Code analyse.do`: Analysis of Agboville data.
- `EpicystiR_Total_Env_code analyse.do`: Combined data and environmental analysis.

---

## 📖 Data Dictionaries

### 🧾 EpicystiR_Dabou (Tables 1, 2, S3, S4)

| Variable Name | Variable Label |
|---------------|----------------|
| id            | Identifier number |
| dte           | Survey date |
| village       | Village |
| grap          | Cluster |
| spref         | Area of residence |
| sexe          | Sex |
| age           | Age |
| age_cat       | Age group |
| ancien        | Length of time in village |
| etude         | Level of education |
| instruit      | Educated |
| muslim        | Muslim religion |
| cephal        | Recurrent headaches |
| crisepi       | Knowledge of epileptic seizures |
| epifam        | Epilepsy in the family |
| vers          | History of intestinal worms |
| depara        | History of antiparasitic treatment |
| tenia         | Do you know about tapeworm? |
| cmodet        | Do you know how tapeworms are transmitted? |
| cyst          | Have you ever heard about cysticercosis? |
| lmain         | Handwashing |
| pleinair      | Open defecation |
| typ_eau       | Tap water consumption |
| pluie         | Rainwater consumption |
| lavcrudi      | Washing raw vegetables before consumption |
| cporc         | Pork consumption |
| prelev        | Blood collected |
| elisa         | ELISA test |
| wb            | Western Blot test |
| cysti         | Cysticercosis serology result |
| pds           | Sampling weight |
| t_grap        | Number of persons in the cluster |
| t_vilag       | Village population |

### 🧾 EpicystiR_Agboville (Tables 1, 3, S6, S7)

| Variable Name | Variable Label |
|---------------|----------------|
| id            | Identifier number |
| dte           | Survey date |
| village       | Village |
| grap          | Cluster |
| zone          | Area of residence |
| sexe          | Sex |
| age           | Age |
| age_cat       | Age group |
| ancien        | Length of time in village |
| etude         | Level of education |
| instruit      | Educated |
| muslim        | Muslim religion |
| cephal        | Recurrent headaches |
| crisepi       | Knowledge of epileptic seizures |
| epifam        | Epilepsy in the family |
| vers          | History of intestinal worms |
| depara        | History of antiparasitic treatment |
| tenia         | Do you know about tapeworm? |
| cmodet        | Do you know how tapeworms are transmitted? |
| cyst          | Have you ever heard about cysticercosis? |
| lmain         | Handwashing |
| pleinair      | Open defecation |
| typ_eau       | Tap water consumption |
| pluie         | Rainwater consumption |
| lavcrudi      | Washing raw vegetables before consumption |
| cporc         | Pork consumption |
| prelev        | Blood collected |
| elisa         | ELISA test |
| wb            | Western Blot test |
| cysti         | Cysticercosis serology result |
| pds           | Sampling weight |
| t_grap        | Number of persons in the cluster |
| t_vilag       | Village population |

### 🧾 EpicystiR_Total (Tables S1, S5)

| Variable Name | Variable Label |
|---------------|----------------|
| id            | Identifier number |
| dte           | Survey date |
| departe       | Department |
| zone         | Area of residence |
| age           | Age |
| age_cat       | Age group |
| sexe          | Sex |
| instruit      | Educated |
| etude         | Level of education |
| muslim        | Muslim religion |
| ancien        | Length of time in village |
| lmain         | Handwashing |
| lavcrudi      | Washing raw vegetables before consumption |
| typ_eau       | Tap water consumption |
| pluie         | Rainwater consumption |
| cporc         | Pork consumption |
| pleinair      | Open defecation |
| cysti         | Cysticercosis serology result |

### 🧾 EpicystiR_Env (Table S2)

| Variable Name | Variable Label |
|---------------|----------------|
| idf           | Household identifier |
| dte           | Survey date |
| departe       | Department |
| vilag         | Village |
| resident      | Number of household members |
| potable       | Presence of drinking water source |
| main          | Presence of handwashing facility |
| latrine       | Presence of latrines |
| ordures       | Presence of wild garbage dumps |
| porcheri      | Presence of nearby pig farm |

---

## 🧰 Instructions for Use

### 🔸 How to Access the Files

You can download the data and scripts directly from the GitHub repository:

1. Go to the project page on GitHub: [https://github.com/samk253/EpicystiR](https://github.com/samk253/EpicystiR)
2. Click on the green **“Code”** button and choose **“Download ZIP”**.
3. Extract the ZIP file.

### 🔸 How to View Data 

- The `.csv` files can be opened with **Excel**, **LibreOffice Calc**, or any statistical software like **R**, **Stata**, or **SPSS**.
- The `.do` files are **Stata scripts**. You can open them with Stata.

---