// Author: Thomas Haese
// Charité – Universitätsmedizin Berlin

Profile: AntibioticTherapy
Parent: Procedure
Id: antibiotic-therapy
Title: "Antibiotic therapy"
Description: "Antibiotic therapy in the context of pediatrics"

* insert napkon-metadata(2021-10-18, #draft, 0.1.0)

/*
Status bzw. Antwortausprägungen direkt aus der FHIR-Ressource.
VS EventStatus nur auf die erforderlichen eingeschränkt und daher abgewandelt.
Status verweist auf das entsprechend erstellte Value Set.
*/

* status from RestrictedEventStatus

* category.coding ^slicing.discriminator.type = #pattern
* category.coding ^slicing.discriminator.path = "$this"
* category.coding ^slicing.rules = #open
* category.coding contains sct 1..1
* category.coding[sct] = $sct#416608005 "Drug therapy (procedure)"
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains sct 1..1
* code.coding[sct] = $sct#281789004	"Antibiotic therapy (procedure)"
* performed[x] MS
* performed[x] 1..1
* performed[x] only dateTime
* subject MS
* subject 1..1
* subject only Reference(Patient)

Instance: instance-antibiotic-therapy
InstanceOf: antibiotic-therapy
Usage: #example
Title: "Instance of fhir resource antibiotic therapy in the context of pediatrics"
Description: "Example or antibiotic-therapy"
* status = #completed
* subject = Reference(ExamplePatient)
* performedDateTime = "2021-10-18T13:28:17-05:00"
