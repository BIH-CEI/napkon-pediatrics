Profile: ViralInfection
Parent: $gecco-base-condition
Id: viral-infection
Title: "Viral Infection"
Description: "Occurrence of a viral infection"
* insert napkon-metadata(2021-10-03, #draft, 0.1.0)
* category
  * coding ^slicing.discriminator[0].type = #pattern
  * coding ^slicing.discriminator[0].path = "$this"
  * coding ^slicing.rules = #open
  * coding contains sct 1..1
  * coding[sct] = $sct#34014006 "Viral disease (disorder)"
* code
  * coding[sct] 1..1 MS
  * coding[sct] from ViralInfectiousDiseases (required)

Instance: ViralInfectionConfirmed
InstanceOf: viral-infection
Usage: #example
Title: "Viral Infection Confirmed"
Description: "Example of a confirmed viral infection"
* code.coding[sct] = $sct#27619001 "Disease caused by Coronaviridae (disorder)"
* subject = Reference(ExamplePatient)
* verificationStatus.coding[conditionVerificationStatus] = $cs-condition-ver-status#confirmed
* verificationStatus.coding[snomed] = $sct#410605003 "Confirmed present (qualifier value)"
* recordedDate = "2021-11-03"

Instance: ViralInfectionRefuted
InstanceOf: viral-infection
Usage: #example
Title: "Viral Infection Refuted"
Description: "Example of a refuted viral infection"
* code = $sct#6142004 "Influenza (disorder)"
* subject = Reference(ExamplePatient)
* verificationStatus.coding[conditionVerificationStatus] = $cs-condition-ver-status#refuted
* verificationStatus.coding[snomed] = $sct#410594000 "Definitely NOT present (qualifier value)"
* recordedDate = "2021-11-03"
