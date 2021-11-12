// Author: Gregor Lichtner
// Berlin Institute of Health | Charité
ValueSet: FungalInfectionsICD10GM
Id: fungal-infections-icd10-gm
Title: "Fungal Infections ICD10 GM"
Description: "Value set of fungal infections"
* insert napkon-metadata(2020-10-05, #draft, 0.1.0)
* $icd10-gm#B37.- "Kandidose"
* $icd10-gm#B44.- "Aspergillose"
//* $icd10-gm# finde ich nicht den code others
* $icd10-gm#B48.- "Sonstige Mykosen, anderenorts nicht klassifiziert"
* include codes from system $icd10-gm where concept is-a #B37.-  "Kandidose"