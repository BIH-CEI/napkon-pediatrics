// Author: Gregor Lichtner
// Berlin Institute of Health | Charité
Profile: Covid19Complication
Parent: $gecco-base-condition
Id: covid19-complication
Title: "Covid19 complication"
Description: "Complication due to COVID19"
* insert napkon-metadata(2021-09-22, #draft, 0.1.0)
* category
  * coding ^slicing.discriminator[0].type = #pattern
  * coding ^slicing.discriminator[0].path = "$this"
  * coding ^slicing.rules = #open
  * coding contains complication 1..1 MS
  * coding[complication] = $sct#116223007:42752001=840539006 "Complication where Due to = Disease caused by 2019 novel coronavirus"
* code
  * coding[sct] from Covid19ComplicationsSCT (required)
  * coding[icd10-gm] from Covid19ComplicationsICD10GM (required)

Instance: Covid19Complication
InstanceOf: covid19-complication
Usage: #example
Title: "Covid19 Complication"
Description: "Example of a covid19 complication"
* verificationStatus.coding[conditionVerificationStatus] = $cs-condition-ver-status#confirmed
* verificationStatus.coding[snomed] = $sct#410605003 "Confirmed present (qualifier value)"
* code.coding[sct] = $sct#235859005 "Liver disorder due to infection"
* subject = Reference(ExamplePatient)
* recordedDate = "2021-02-19T09:30:35+01:00"
