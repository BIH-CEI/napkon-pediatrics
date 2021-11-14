// Author: Thomas Haese
// Charité – Universitätsmedizin Berlin
Profile: ChronicHematoloogicDiseases
Parent: $gecco-base-condition
Id: chronic-hematoloogic-diseases
Title: "Chronic Hematoloogic Diseases"
Description: "Chronic Hematoloogic diseases as a risk factor for a severe course of an infection with SARS-CoV-2 in the context of pediatrics"

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

* code.coding[icd10-gm] from ChronicHematoloogicDiseasesICD (required)
* code.coding[sct] from ChronicHematoloogicDiseases (required)

//Instances SCT + ICD
Instance: instance-chronic-hematoloogic-diseases
InstanceOf: chronic-hematoloogic-diseases
Usage: #example
Title: "Instance of fhir resource chronic hematoloogic diseases in the context of pediatrics"
Description: "Example of a chronic hematoloogic diseases"
* code.coding[sct] = $sct#303011007:263502005=90734009 "Neutropenic disorder where Clinical course = Chronic"
* subject = Reference(ExamplePatient)
* recordedDate = "2021-11-08"
* verificationStatus.coding[conditionVerificationStatus] = $cs-condition-ver-status#confirmed
* verificationStatus.coding[snomed] = $sct#410605003 "Confirmed present (qualifier value)"

Instance: instance-chronic-hematoloogic-diseases-icd
InstanceOf: chronic-hematoloogic-diseases
Usage: #example
Title: "Instance of fhir resource chronic hematoloogic diseases in the context of pediatrics"
Description: "Example of a chronic hematoloogic diseases"
* code.coding[icd10-gm] = $icd10-gm|"2021"#D50.9 "Eisenmangelanämie, nicht näher bezeichnet"
* subject = Reference(ExamplePatient)
* recordedDate = "2021-11-08"
* verificationStatus.coding[conditionVerificationStatus] = $cs-condition-ver-status#refuted
* verificationStatus.coding[snomed] = $sctIntl2021#410594000 "Definitely NOT present (qualifier value)"
