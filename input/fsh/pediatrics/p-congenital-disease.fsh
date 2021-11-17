// Author: Gregor Lichtner
// Berlin Institute of Health | Charité
Profile: CongenitalDisease
Parent: $gecco-base-condition
Id: congenital-disease
Title: "Congenital Disease"
Description: "Congenital disease in the context of the NAPKON pediatrics module"
* insert napkon-metadata(2021-11-17, #draft, 0.1.0)
* category
  * coding ^slicing.discriminator[0].type = #pattern
  * coding ^slicing.discriminator[0].path = "$this"
  * coding ^slicing.rules = #open
  * coding contains complication 1..1 MS
  * coding[complication] = $sct#394537008 "Pediatric specialty (qualifier value)"
* code
  * coding[sct] from CongenitalDiseases (required)

Instance: CongenitalAtransferrinemiaConfirmed
InstanceOf: congenital-disease
Usage: #example
Title: "Congenital Atransferrinemia confirmed"
Description: "Example: Confirmed congenital atransferrinemia"
* verificationStatus.coding[conditionVerificationStatus] = $cs-condition-ver-status#confirmed
* verificationStatus.coding[snomed] = $sct#410605003 "Confirmed present (qualifier value)"
* code.coding[sct] = $sct#111571009 "Congenital atransferrinemia (disorder)"
* subject = Reference(ExamplePatient)
* recordedDate = "2021-02-19T09:30:35+01:00"
