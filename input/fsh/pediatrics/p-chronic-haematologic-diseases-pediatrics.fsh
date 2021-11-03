// Author: Thomas Haese
// Charité – Universitätsmedizin Berlin

Profile: ChronicHaematologicDiseases
Parent: Condition
Id: chronic-haematologic-diseases
Title: "Chronic Haematologic Diseases"
Description: "Chronic Haematologic diseases as a risk factor for a severe course of an infection with SARS-CoV-2 in the context of pediatrics"

* insert napkon-metadata(2021-08-10, #draft, 0.1.0)

* category 1..
* category.coding MS
* category.coding ^slicing.discriminator.type = #pattern
* category.coding ^slicing.discriminator.path = "$this"
* category.coding ^slicing.rules = #open
* category.coding contains clinicalHematology  1..1 MS
* category.coding[clinicalHematology] = $sct#394803006
* category.coding[clinicalHematology].system 1.. MS
* category.coding[clinicalHematology].code 1.. MS

* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains
    icd10-gm 0..1 and
    sct 0..1
* code.coding[icd10-gm] from $ChronicHaematologicDiseasesICD (required)
* code.coding[sct] from $ChronicHaematologicDiseases (required)

//Instances SCT + ICD
Instance: instance-chronic-haematologic-diseases
InstanceOf: chronic-haematologic-diseases
Usage: #example
Title: "Instance of fhir resource chronic haematologic diseases in the context of pediatrics"
Description: "Example of a chronic haematologic diseases"
* code.coding[sct] = $sct#40108008 "Thalassemia (disorder)"
* subject = Reference(ExamplePatient)

Instance: instance-chronic-haematologic-diseases-icd
InstanceOf: chronic-haematologic-diseases
Usage: #example
Title: "Instance of fhir resource chronic haematologic diseases in the context of pediatrics"
Description: "Example of a chronic haematologic diseases"
* code.coding[icd10-gm] = $icd10-gm#D50.9 "Eisenmangelanämie, nicht näher bezeichnet"
* subject = Reference(ExamplePatient)
