// Author: Thomas Haese
// Charité – Universitätsmedizin Berlin
Profile: HemostasisTherapy
Parent: $mii-procedure
Id: hemostasis-therapy
Title: "Hemostasis therapy"
Description: "Hemostasis therapy in the context of pediatrics"
* insert napkon-metadata(2021-10-18, #draft, 0.1.0)
* insert mii-patient-reference
* status from RestrictedEventStatus
* category.coding[sct] 1..1
* category.coding[sct] = $sct#277132007 "Therapeutic procedure (procedure)"
* code.coding[sct] 1..1
* code.coding[sct] = $sct#713147009	"Application of hemostatic agent (procedure)"

Instance: instance-hemostasis-therapy
InstanceOf: hemostasis-therapy
Usage: #example
Title: "Instance of fhir resource hemostasis-therapy in the context of pediatrics"
Description: "Example or hemostasis-therapy"
* status = #in-progress
* subject = Reference(ExamplePatient)
* performedDateTime = "2021-10-18T13:28:17-05:00"
