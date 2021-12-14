// Author: Gregor Lichtner
// Charité - Universitätsmedizin Berlin
Profile: COVID19Symptoms
Parent: $gecco-base-condition
Id: covid19-symptoms
Title: "COVID-19 Symptoms"
Description: "Additional COVID-19 symptoms"
* insert napkon-metadata(2021-11-10, #active, 1.0.0)
* category 1..* MS
  * coding ^slicing.discriminator[0].type = #pattern
  * coding ^slicing.discriminator[0].path = "$this"
  * coding ^slicing.rules = #open
  * coding contains pediatrics 1..1 MS and observationCategory 1..1 MS
  * coding[observationCategory] = $cs-observation-category#laboratory "Laboratory"
  * coding[observationCategory].system 1.. MS
  * coding[observationCategory].code 1.. MS
  * coding[pediatrics] = $sct#394537008 "Pediatric specialty (qualifier value)"
  * coding[pediatrics].system 1.. MS
  * coding[pediatrics].code 1.. MS
* code.coding[sct] from covid-19-symptoms (required)
* code.coding[icd10-gm] from covid-19-symptoms-icd-10-gm (required)
* extension contains $ext-condition-dueTo named dueTo 1..1
* extension[dueTo].valueCodeableConcept 1..1
* extension[dueTo].valueCodeableConcept = $sct#840539006 "Disease caused by Severe acute respiratory syndrome coronavirus 2 (disorder)"

Instance: COVID19Symptoms
InstanceOf: covid19-symptoms
Usage: #example
Title: "COVID19 Symptom"
Description: "Example of a COVID-19 complication"
* verificationStatus.coding[conditionVerificationStatus] = $cs-condition-ver-status#confirmed
* verificationStatus.coding[snomed] = $sct#410605003 "Confirmed present (qualifier value)"
* code.coding[sct] = $sct#162397003 "Pain in throat (finding)"
* subject = Reference(ExamplePatient)
* recordedDate = "2021-02-19T09:30:35+01:00"
