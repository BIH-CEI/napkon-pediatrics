// Author: Gregor Lichtner
// Charité - Universitätsmedizin Berlin
Profile: FungalInfection
Parent: $gecco-base-condition
Id: fungal-infection
Title: "Fungal Infection"
Description: "Occurrence of a fungal infection"
* insert napkon-metadata(2021-09-22, #active, 1.0.0)
* category 1..* MS
  * coding ^slicing.discriminator[0].type = #pattern
  * coding ^slicing.discriminator[0].path = "$this"
  * coding ^slicing.rules = #open
  * coding contains infectiousDiseases 1..1 MS and observationCategory 1..1 MS
  * coding[observationCategory] = $cs-observation-category#laboratory "Laboratory"
  * coding[observationCategory].system 1.. MS
  * coding[observationCategory].code 1.. MS
  * coding[infectiousDiseases]
    * system 1.. MS
    * code 1.. MS
  * coding[infectiousDiseases] = $sct#394807007 "Infectious diseases (specialty) (qualifier value)"
* code
  * coding[sct] 1..1
  * coding[sct] from FungalInfectionsSCT (required)
  * coding[icd10-gm] from FungalInfectionsICD10GM (required)

Instance: FungalInfectionConfirmed
InstanceOf: fungal-infection
Usage: #example
Title: "Fungal Infection Confirmed"
Description: "Example of a confirmed fungal infection"
* verificationStatus.coding[conditionVerificationStatus] = $cs-condition-ver-status#confirmed
* verificationStatus.coding[snomed] = $sct#410605003 "Confirmed present (qualifier value)"
* code.coding[sct] = $sct#83062006 "Infection caused by Candida albicans (disorder)"
* subject = Reference(ExamplePatient)
* recordedDate = "2021-09-14T13:06:00+02:00"

Instance: FungalInfectionUnknown
InstanceOf: fungal-infection
Usage: #example
Title: "Fungal Infection Unknown"
Description: "Example of a fungal infection where the presence is unknown"
* insert uncertainty-of-presence
* subject = Reference(ExamplePatient)
* code.coding[sct] = $sct#3218000 "Mycosis (disorder)"
* recordedDate = "2021-09-14T13:06:00+02:00"
