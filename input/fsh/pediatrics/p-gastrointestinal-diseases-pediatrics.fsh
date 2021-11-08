// Author: Thomas Haese
// Charité – Universitätsmedizin Berlin
Profile: GastrointestinalDiseases
Parent: $gecco-base-condition
Id: gastrointestinal-diseases
Title: "Gastrointestinal Diseases"
Description: "Gastrointestinal diseases in the field of pediatrics as a risk factor for a severe course of an infection with SARS-CoV-2."

* insert napkon-metadata(2021-08-10, #draft, 0.1.0)

* category 1.. MS
  * coding MS
  * coding ^slicing.discriminator.type = #pattern
  * coding ^slicing.discriminator.path = "$this"
  * coding ^slicing.rules = #open
  * coding contains gastroenterology 1..1 MS
  * coding[gastroenterology] = $sct#394584008 "Gastroenterology (qualifier value)"
  * coding[gastroenterology].system 1.. MS
  * coding[gastroenterology].code 1.. MS

* code.coding[icd10-gm] from GastrointestinalDiseasesICD (required)
* code.coding[sct] from GastrointestinalDiseases (required)

//Instances SCT + ICD
Instance: instance-gastrointestinal-diseases
InstanceOf: gastrointestinal-diseases
Usage: #example
Title: "Instance of fhir resource sgastrointestinal-diseases in the context of pediatrics"
Description: "Example of a gastrointestinal disease"
* code.coding[sct] = $sct#236069009 "Chronic constipation (disorder)"
* subject = Reference(ExamplePatient)
* recordedDate = "2021-11-08"
* verificationStatus.coding[conditionVerificationStatus] = $cs-condition-ver-status#confirmed
* verificationStatus.coding[snomed] = $sct#410605003 "Confirmed present (qualifier value)"

Instance: instance-gastrointestinal-diseases-icd
InstanceOf: gastrointestinal-diseases
Usage: #example
Title: "Instance of fhir resource sgastrointestinal-diseases in the context of pediatrics"
Description: "Example of a gastrointestinal disease"
* code.coding[icd10-gm] = $icd10-gm|"2021"#K59.9 "Funktionelle Darmstörung, nicht näher bezeichnet"
* subject = Reference(ExamplePatient)
* recordedDate = "2021-11-08"
* verificationStatus.coding[conditionVerificationStatus] = $cs-condition-ver-status#refuted
* verificationStatus.coding[snomed] = $sctIntl2021#410594000 "Definitely NOT present (qualifier value)"
