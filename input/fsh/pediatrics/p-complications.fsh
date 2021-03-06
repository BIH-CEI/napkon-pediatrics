// Author: Gregor Lichtner
// Charité - Universitätsmedizin Berlin
Profile: COVID19Complication
Parent: $gecco-base-condition
Id: covid19-complication
Title: "COVID-19 complication"
Description: "Complication due to COVID-19"
* insert napkon-metadata(2021-09-22, #active, 1.0.0)
* category 1..* MS
  * coding ^slicing.discriminator[0].type = #pattern
  * coding ^slicing.discriminator[0].path = "$this"
  * coding ^slicing.rules = #open
  * coding contains complication 1..1 MS
  * coding[complication] = $sct#116223007 "Complication (disorder)"
  * coding[complication].system 1.. MS
  * coding[complication].code 1.. MS
* code
  * coding[sct] from COVID19ComplicationsSCT (required)
  * coding[icd10-gm] from COVID19ComplicationsICD10GM (required)
* extension contains $ext-condition-dueTo named dueTo 1..1
* extension[dueTo].valueCodeableConcept 1..1
* extension[dueTo].valueCodeableConcept = $sct#840539006 "Disease caused by Severe acute respiratory syndrome coronavirus 2 (disorder)"

Instance: COVID19Complication
InstanceOf: covid19-complication
Usage: #example
Title: "COVID-19 Complication"
Description: "Example of a COVID-19 complication"
* verificationStatus.coding[conditionVerificationStatus] = $cs-condition-ver-status#confirmed
* verificationStatus.coding[snomed] = $sct#410605003 "Confirmed present (qualifier value)"
* code.coding[sct] = $sct#417451006:363589002=439569004 "Procedure needed Where Associated procedure = Resuscitation"
* subject = Reference(ExamplePatient)
* recordedDate = "2021-02-19T09:30:35+01:00"
