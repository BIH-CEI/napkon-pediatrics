// Author: Thomas Haese
// Charité – Universitätsmedizin Berlin

Profile: GastrointestinalDiseases
Parent: Condition
Id: gastrointestinal-diseases
Title: "Gastrointestinal Diseases"
Description: "Gastrointestinal diseases in the field of pediatrics as a risk factor for a severe course of an infection with SARS-CoV-2."

* insert napkon-metadata(2021-08-10, #draft, 0.1.0)

* category 1.. MS
* category.coding MS
* category.coding ^slicing.discriminator.type = #pattern
* category.coding ^slicing.discriminator.path = "$this"
* category.coding ^slicing.rules = #open
* category.coding contains gastroenterology 1..1 MS
* category.coding[gastroenterology] = $sct#394584008
* category.coding[gastroenterology].system 1.. MS
* category.coding[gastroenterology].code 1.. MS

* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains
    icd10-gm 0..1 and
    sct 0..1
* code.coding[icd10-gm] from $GastrointestinalDiseasesICD (required)
* code.coding[sct] from $GastrointestinalDiseases (required)

//Instances SCT + ICD
Instance: instance-gastrointestinal-diseases
InstanceOf: gastrointestinal-diseases
Usage: #example
Title: "Instance of fhir resource sgastrointestinal-diseases in the context of pediatrics"
Description: "Example of a gastrointestinal disease"
* code.coding[sct] = $sct#236069009 "Chronic constipation (disorder)"
* subject = Reference(ExamplePatient)

Instance: instance-gastrointestinal-diseases-icd
InstanceOf: gastrointestinal-diseases
Usage: #example
Title: "Instance of fhir resource sgastrointestinal-diseases in the context of pediatrics"
Description: "Example of a gastrointestinal disease"
* code.coding[icd10-gm] = $icd10-gm#K59.9 "Funktionelle Darmstörung, nicht näher bezeichnet"
* subject = Reference(ExamplePatient)
