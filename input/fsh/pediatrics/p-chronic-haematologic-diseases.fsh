// Author: Thomas Haese
// Charité – Universitätsmedizin Berlin
Profile: ChronicHaematologicDiseases
Parent: $gecco-base-condition
Id: chronic-haematologic-diseases
Title: "Chronic Haematologic Diseases"
Description: "Chronic Haematologic diseases as a risk factor for a severe course of an infection with SARS-CoV-2 in the context of pediatrics"

* insert napkon-metadata(2021-08-10, #draft, 0.1.0)

* category 1..
  * coding MS
  * coding ^slicing.discriminator.type = #pattern
  * coding ^slicing.discriminator.path = "$this"
  * coding ^slicing.rules = #open
  * coding contains clinicalHematology  1..1 MS
  * coding[clinicalHematology] = $sct#394803006 "Clinical hematology (qualifier value)"
  * coding[clinicalHematology].system 1.. MS
  * coding[clinicalHematology].code 1.. MS

* code.coding[icd10-gm] from ChronicHaematologicDiseasesICD (required)
* code.coding[sct] from ChronicHaematologicDiseases (required)

//Instances SCT + ICD
Instance: instance-chronic-haematologic-diseases
InstanceOf: chronic-haematologic-diseases
Usage: #example
Title: "Instance of fhir resource chronic haematologic diseases in the context of pediatrics"
Description: "Example of a chronic haematologic diseases"
* code.coding[sct] = $sct#40108008 "Thalassemia (disorder)"
* subject = Reference(ExamplePatient)
* recordedDate = "2021-11-08"
* verificationStatus.coding[conditionVerificationStatus] = $cs-condition-ver-status#confirmed
* verificationStatus.coding[snomed] = $sct#410605003 "Confirmed present (qualifier value)"

Instance: instance-chronic-haematologic-diseases-icd
InstanceOf: chronic-haematologic-diseases
Usage: #example
Title: "Instance of fhir resource chronic haematologic diseases in the context of pediatrics"
Description: "Example of a chronic haematologic diseases"
* code.coding[icd10-gm] = $icd10-gm|"2021"#D50.9 "Eisenmangelanämie, nicht näher bezeichnet"
* subject = Reference(ExamplePatient)
* recordedDate = "2021-11-08"
* verificationStatus.coding[conditionVerificationStatus] = $cs-condition-ver-status#refuted
* verificationStatus.coding[snomed] = $sctIntl2021#410594000 "Definitely NOT present (qualifier value)"
