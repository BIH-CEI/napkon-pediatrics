Profile: ViralInfection
Parent: Condition
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
* code 1..1 MS
* code from ViralInfectiousDiseases (required)

Instance: viral-infection-instance
InstanceOf: viral-infection
Usage: #example
Title: "viral-infection-instance"
Description: "Example of a viral infection"
* code = $sct#27619001 "Disease caused by Coronaviridae (disorder)"
* subject = Reference(ExamplePatient)


Instance: viral-infection-instance2
InstanceOf: viral-infection
Usage: #example
Title: "viral-infection-instance"
Description: "Example of a viral infection"
* code = $sct#6142004 "Influenza (disorder)"
* subject = Reference(ExamplePatient)
