// Author: Thomas Haese
// Charité – Universitätsmedizin Berlin

ValueSet: ChronicHaematologicDiseases
Id: chronic-haematologic-diseases-sct
Title: "Value Set of Chronic Haematologic Diseases"
Description: "Chronic haematologic diseases the context of pediatrics and Covid-19"

* insert napkon-metadata(2021-09-13, #draft, 0.1.0)

* ^url = "https://www.netzwerk-universitaetsmedizin.de/fhir/ValueSet/chronic-haematologic-diseases-sct"

* $sct#61261009 "Hemolytic anemia (disorder)"
* $sct#40108008 "Thalassemia (disorder)"
* $sct#127040003 "Sickle cell-hemoglobin SS disease (disorder)"
* $sct#62403005 "Glucose-6-phosphate dehydrogenase deficiency anemia (disorder)"
* $sct#87522002 "Iron deficiency anemia (disorder)"
* $sct#248693006 "Chronic idiopathic neutropenia (disorder)"
* $sct#109995007 "Myelodysplastic syndrome (disorder)"
* $sct#64779008 "Blood coagulation disorder (disorder)"

//Other is missing
* include codes from system $sct where concept is-a #394803006
