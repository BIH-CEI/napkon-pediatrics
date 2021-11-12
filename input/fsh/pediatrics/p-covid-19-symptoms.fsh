Profile: Covid19Symptoms
Parent: $gecco-base-condition
Id: covid-19-Covid19-symptoms
Description: "Covers the covid 19 symptoms"
* insert napkon-metadata(2021-11-10, #draft, 0.1.0)
* category 1.. MS
* category.coding MS
* category.coding ^slicing.discriminator.type = #pattern
* category.coding ^slicing.discriminator.path = "$this"
* category.coding ^slicing.rules = #open
* category.coding contains symptoms 1..1 MS
* category.coding[symptoms] = $sct#840539006 "Disease caused by Severe acute respiratory syndrome coronavirus 2 (disorder)" //mit paedatrie ersetzen
* category.coding[symptoms].system 1.. MS
* category.coding[symptoms].code 1.. MS
* code.coding[sct] from covid-19-symptoms (required)
* code.coding[sct] ^sliceName = "sct"



Instance: Covid19Symptoms
InstanceOf: covid-19-Covid19-symptoms
Usage: #example
Title: "Covid19 Symptom"
Description: "Example of a covid19 complication"
* verificationStatus.coding[conditionVerificationStatus] = $cs-condition-ver-status#confirmed
* verificationStatus.coding[snomed] = $sct#410605003 "Confirmed present (qualifier value)"
* code.coding[sct] = $sct#162397003 "Pain in throat (finding)"
* subject = Reference(ExamplePatient)
* recordedDate = "2021-02-19T09:30:35+01:00"
