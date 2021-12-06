// Author: Larissa Röhrig, Gregor Lichtner
// Charité - Universitätsmedizin Berlin
Profile: BacterialInfection
Parent: $gecco-base-condition
Id: bacterial-infection
Title: "Bacterial Infection"
Description: "Occurrence of a bacterial infection"
* insert napkon-metadata(2021-10-04, #active, 1.0.0)
* category 1..* MS
  * coding ^slicing.discriminator[0].type = #pattern
  * coding ^slicing.discriminator[0].path = "$this"
  * coding ^slicing.rules = #open
  * coding contains infectiousDiseases 1..1 MS and observationCategory 1..1 MS
  * coding[observationCategory] = $cs-observation-category#laboratory "Laboratory"
  * coding[observationCategory].system 1.. MS
  * coding[observationCategory].code 1.. MS
  * coding[infectiousDiseases] = $sct#394807007 "Infectious diseases (specialty) (qualifier value)"
  * coding[infectiousDiseases].system 1.. MS
  * coding[infectiousDiseases].code 1.. MS
* code
  * coding[sct] 1..1 MS
  * coding[sct] from bacterial-infectious-diseases (required)

Instance: BacterialInfectionConfirmed
InstanceOf: bacterial-infection
Usage: #example
Title: "Bacterial Infection Confirmed"
Description: "Example of a confirmed bacterial infection"
* code = $sct#26726000 "Legionella infection (disorder)"
* subject = Reference(ExamplePatient)
* verificationStatus.coding[conditionVerificationStatus] = $cs-condition-ver-status#confirmed
* verificationStatus.coding[snomed] = $sct#410605003 "Confirmed present (qualifier value)"
* recordedDate = "2021-11-03"

Instance: BacterialInfectionRefuted
InstanceOf: bacterial-infection
Usage: #example
Title: "Bacterial Infection Refuted"
Description: "Example of a refuted bacterial infection"
* code = $sct#26726000 "Legionella infection (disorder)"
* subject = Reference(ExamplePatient)
* verificationStatus.coding[conditionVerificationStatus] = $cs-condition-ver-status#refuted
* verificationStatus.coding[snomed] = $sct#410594000 "Definitely NOT present (qualifier value)"
* recordedDate = "2021-11-03"
