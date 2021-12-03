// Author: Thomas Haese
// Charité - Universitätsmedizin Berlin
ValueSet: ChronicKidneyDiseasesSCT
Id: chronic-kidney-diseases-sct
Title: "Value Set of Chronic Kidney Diseases"
Description: "Chronic kidney diseases in the context of pediatrics"
* insert napkon-metadata(2021-10-18, #active, 1.0.0)
* $sct#90708001:246454002=255399007 "Kidney disease where Occurrence = Congenital" // Angeborene Erkrankung der Nieren
* $sct#128606002:246454002=255399007 "Disorder of the urinary system where Occurrence = Congenital" // Angeborene Erkrankung der Harnwege
* codes from system $sct where concept is-a #90708001 "Kidney disease (disorder)"
* codes from system $sct where concept is-a #128606002 "Disorder of the urinary system (disorder)"
