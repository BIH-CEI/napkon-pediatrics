Profile: BacterialInfection
Parent: $gecco-base-condition
Id: bacterial-infection
Title: "Bacterial Infection"
Description: "Occurrence of a bacterial infection"
* insert napkon-metadata(2021-10-04, #draft, 0.1.0)
* category
  * coding ^slicing.discriminator[0].type = #pattern
  * coding ^slicing.discriminator[0].path = "$this"
  * coding ^slicing.rules = #open
  * coding contains sct 1..1
  * coding[sct] = $sct#87628006 "Bacterial infectious disease (disorder)"
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
