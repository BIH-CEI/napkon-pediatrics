// Author: Gregor Lichtner
// Charité - Universitätsmedizin Berlin
ValueSet: FungalInfectionsICD10GM
Id: fungal-infections-icd10-gm
Title: "Fungal Infections ICD10 GM"
Description: "Value set of fungal infections"
* insert napkon-metadata(2020-10-05, #draft, 0.1.0)
* include codes from system $icd10-gm where concept is-a #B44 "Aspergillose" and child exists false
* include codes from system $icd10-gm where concept is-a #B37 "Kandidose" and child exists false
* $icd10-gm#B48 "Sonstige Mykosen, anderenorts nicht klassifiziert"

// Andere = Mykosen (B35-B49)
* include codes from system $icd10-gm where concept regex /^B3[5-9]\..*/ and child exists false // Mykosen
* include codes from system $icd10-gm where concept regex /^B4[0-9]\..*/ and child exists false // Mykosen
