Profile: BacterialInfection
Parent: Condition
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
* code 1..1 MS
* code from bacterial-infectious-diseases (required)

Instance: bacterial-infection-instance
InstanceOf: bacterial-infection
Usage: #example
Title: "bacterial-infection-instance"
Description: "Example of a bacterial infection"
* code = $sct#26726000 "Legionella infection (disorder)"
* subject = Reference(ExamplePatient)
