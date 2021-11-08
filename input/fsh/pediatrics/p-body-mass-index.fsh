// Author: Thomas Haese
// Charité – Universitätsmedizin Berlin

Profile: BodyMassIndex
Parent: Observation
Id: body-mass-index
Title: "Body Mass Index"
Description: "Body mass index of a patient in context of Pediatrics"

* insert napkon-metadata(2021-08-10, #draft, 0.1.0)
* insert mii-patient-reference
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains loinc 1..*
* code.coding[loinc] = $loinc#39156-5
* code.coding[loinc].system 1..
* code.coding[loinc].code 1..

* insert value-quantity(#kg/m2, "kilogram / meter ^ 2") // should be "kilogram / (meter ^ 2)" but this causes a sushi error

//Instance
Instance: instance-body-mass-index
InstanceOf: body-mass-index
Usage: #example
Title: "Instance of fhir resource body mass index in the context of pediatrics"
Description: "Example of body mass index"
//Values
* valueQuantity.value = 25
* status = #final
* subject = Reference(ExamplePatient)
