// Author: Gregor Lichtner
// Berlin Institute of Health | Charité
Profile: FungalInfection
Parent: $gecco-base-condition
Id: fungal-infection
Title: "Fungal Infection"
Description: "Occurrence of a fungal infection"
* insert napkon-metadata(2021-09-22, #draft, 0.1.0)
* category 1..* MS
  * coding ^slicing.discriminator.type = #pattern
  * coding ^slicing.discriminator.path = "$this"
  * coding ^slicing.rules = #open
  * coding contains infectiousDiseases 1..1
  * coding[infectiousDiseases]
    * system 1.. MS
    * code 1.. MS
  * coding[infectiousDiseases] = $sct#394807007 "Infectious diseases (specialty) (qualifier value)"
* code
  * coding[sct] 1..1
  * coding[sct] from FungalInfections (required)

Instance: FungalInfection
InstanceOf: fungal-infection
Usage: #example
Title: "fungal-infection-instance"
Description: "Example of a fungal infection"
* verificationStatus.coding[conditionVerificationStatus] = $cs-condition-ver-status#confirmed
* verificationStatus.coding[snomed] = $sct#410605003 "Confirmed present (qualifier value)"
* code = $sct#83062006 "Infection caused by Candida albicans (disorder)"
* subject = Reference(ExamplePatient)
* recordedDate = "2021-09-14T13:06:00+02:00"
