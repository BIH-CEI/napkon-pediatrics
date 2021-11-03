// Author: Thomas Haese
// Charité – Universitätsmedizin Berlin

ValueSet: GastrointestinalDiseases
Id: gastrointestinal-diseases-sct
Title: "Value Set of Gastrointestinal Diseases"
Description: "Gastrointestinal diseases in the context of pediatrics and Covid-19"

* insert napkon-metadata(2021-09-13, #draft, 0.1.0)

* ^url = "https://www.netzwerk-universitaetsmedizin.de/fhir/ValueSet/gastrointestinal-diseases-sct"

* $sct#236069009 "Chronic constipation (disorder)"
* $sct#6382002 "Chronic inflammatory small bowel disease (disorder)"
* $sct#396331005 "Celiac disease (disorder)"
* $sct#782555009 "Allergy to cow's milk protein (finding)"
* $sct#118926004 "Disorder of bile duct (disorder)"

// Andere //
* include codes from system $sct where concept is-a #119292006
