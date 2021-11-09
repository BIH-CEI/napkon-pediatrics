// Author: Thomas Haese
// Charité – Universitätsmedizin Berlin

ValueSet: ChronicHaematologicDiseases
Id: chronic-haematologic-diseases-sct
Title: "Value Set of Chronic Haematologic Diseases"
Description: "Chronic haematologic diseases the context of pediatrics and Covid-19"

* insert napkon-metadata(2021-09-13, #draft, 0.1.0)

* $sct#61261009 "Hemolytic anemia (disorder)" // Hämolytische Anämie - ok
* $sct#40108008 "Thalassemia (disorder)" // Thalassämie - ok
* $sct#127040003 "Sickle cell-hemoglobin SS disease (disorder)" // Sichelzellanämie - ok
* $sct#62403005 "Glucose-6-phosphate dehydrogenase deficiency anemia (disorder)" // G6PD-Mangel-Anämie - ok
* $sct#87522002 "Iron deficiency anemia (disorder)" // Eisenmangelanämie - ok

// TODO: decide which to use (benigne vs chronic alone)
* $sct#303011007 "Neutropenic disorder (disorder)" // chronische Neutropenie
* $sct#234423001 "Chronic benign neutropenia (disorder)" // chronische Neutropenie

* $sct#109995007 "Myelodysplastic syndrome (disorder)" // myelodysplastisches Syndrom - ok
* $sct#64779008 "Blood coagulation disorder (disorder)" // Gerinnungsstörung - ok

// Andere - ok
* include codes from system $sct where concept is-a #414022008 "Disorder of cellular component of blood (disorder)"
* include codes from system $sct where concept is-a #414027002 "Disorder of hematopoietic structure (disorder)"
* include codes from system $sct where concept is-a #362970003 "Disorder of hemostatic system (disorder)"
