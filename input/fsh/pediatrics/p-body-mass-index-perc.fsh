// Author: Thomas Haese
// Charité – Universitätsmedizin Berlin
Profile: BodyMassIndexPercentiles
Parent: Observation
Id: body-mass-index-percentiles
Title: "Body Mass Index with unit percentiles"
Description: "Body mass index with unit percentiles in context of Pediatrics"

* insert napkon-metadata(2021-08-10, #draft, 0.1.0)
* insert mii-patient-reference

* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains loinc 1..*
* code.coding[loinc] = $loinc#39156-5
* code.coding[loinc].system 1..
* code.coding[loinc].code 1..

* insert value-quantity(#{Percentile}, "Percentile")

//Instance
Instance: instance-body-mass-index-percentiles
InstanceOf: body-mass-index-percentiles
Usage: #example
Title: "Instance of fhir resource body mass index in the context of pediatrics"
Description: "Example of body mass index with unit percentiles"
//Values
* valueQuantity.value = 75
* status = #final
* subject = Reference(ExamplePatient)