// Author: Thomas Haese
// Charité - Universitätsmedizin Berlin
ValueSet: ChronicHematologicDiseases
Id: chronic-Hematologic-diseases-sct
Title: "Value Set of Chronic Hematologic Diseases"
Description: "Chronic Hematologic diseases the context of pediatrics and Covid-19"
* insert napkon-metadata(2021-09-13, #draft, 0.1.0)
* $sct#61261009 "Hemolytic anemia (disorder)" // Hämolytische Anämie
* $sct#40108008 "Thalassemia (disorder)" // Thalassämie
* $sct#127040003 "Sickle cell-hemoglobin SS disease (disorder)" // Sichelzellanämie
* $sct#62403005 "Glucose-6-phosphate dehydrogenase deficiency anemia (disorder)" // G6PD-Mangel-Anämie
* $sct#87522002 "Iron deficiency anemia (disorder)" // Eisenmangelanämie
* $sct#303011007:263502005=90734009 "Neutropenic disorder where Clinical course = Chronic" // chronische Neutropenie
* $sct#109995007 "Myelodysplastic syndrome (disorder)" // myelodysplastisches Syndrom
* $sct#64779008 "Blood coagulation disorder (disorder)" // Gerinnungsstörung
* include codes from system $sct where concept is-a #414022008 "Disorder of cellular component of blood (disorder)" // Andere
* include codes from system $sct where concept is-a #414027002 "Disorder of hematopoietic structure (disorder)" // Andere
* include codes from system $sct where concept is-a #362970003 "Disorder of hemostatic system (disorder)" // Andere
