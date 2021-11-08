// Author: Thomas Haese
// Charité – Universitätsmedizin Berlin
Profile: AntibioticTherapy
Parent: $mii-procedure
Id: antibiotic-therapy
Title: "Antibiotic therapy"
Description: "Antibiotic therapy in the context of pediatrics"
* insert napkon-metadata(2021-10-18, #draft, 0.1.0)
* insert mii-patient-reference
* status from RestrictedEventStatus
* category.coding[sct] 1..1
* category.coding[sct] = $sct#416608005 "Drug therapy (procedure)"
* code.coding[sct] 1..1
* code.coding[sct] = $sct#281789004	"Antibiotic therapy (procedure)"

Instance: instance-antibiotic-therapy
InstanceOf: antibiotic-therapy
Usage: #example
Title: "Instance of fhir resource antibiotic therapy in the context of pediatrics"
Description: "Example or antibiotic-therapy"
* status = #completed
* subject = Reference(ExamplePatient)
* performedDateTime = "2021-10-18T13:28:17-05:00"
