// Author: Thomas Haese
// Charité - Universitätsmedizin Berlin
ValueSet: ChronicKidneyDiseasesICD
Id: chronic-kidney-diseases-icd
Title: "Value Set of Chronic Kidney Diseases"
Description: "Chronic kidney diseases in the context of pediatrics"
* insert napkon-metadata(2021-10-18, #active, 1.0.0)
* include codes from system $icd10-gm where concept regex /^Q6[0-4].*/ and child exists false // Angeborene Fehlbildungen des Harnsystems (Q60-Q64)
