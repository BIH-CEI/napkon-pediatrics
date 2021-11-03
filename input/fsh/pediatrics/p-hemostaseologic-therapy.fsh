// Author: Thomas Haese
// Charité – Universitätsmedizin Berlin

Profile: HemostasisTherapy
Parent: Procedure
Id: hemostasis-therapy
Title: "Hemostasis therapy "
Description: "Hemostasis therapy in the context of pediatrics"

* insert napkon-metadata(2021-10-18, #draft, 0.1.0)

* status from RestrictedEventStatus

* category 1..
* category.coding MS
* category.coding ^slicing.discriminator.type = #pattern
* category.coding ^slicing.discriminator.path = "$this"
* category.coding ^slicing.rules = #open
* category.coding contains clinicalHematology  1..1 MS
* category.coding[clinicalHematology] = $sct#394803006
* category.coding[clinicalHematology].system 1.. MS
* category.coding[clinicalHematology].code 1.. MS

* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains sct 1..1
* code.coding[sct] = $sct#713147009	"Application of hemostatic agent (procedure)"
* performed[x] MS
* performed[x] 1..1
* performed[x] only dateTime
* subject MS
* subject 1..1
* subject only Reference(Patient)

Instance: instance-hemostasis-therapy
InstanceOf: hemostasis-therapy
Usage: #example
Title: "Instance of fhir resource hemostasis-therapy in the context of pediatrics"
Description: "Example or hemostasis-therapy"
* status = #in-progress
* subject = Reference(ExamplePatient)
* performedDateTime = "2021-10-18T13:28:17-05:00"
