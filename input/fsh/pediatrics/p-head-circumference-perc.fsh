// Author: Thomas Haese
// Charité – Universitätsmedizin Berlin

Profile: HeadCircumferencePercentiles
Parent: Observation
Id: head-circumference-percentiles
Title: "Head circumference with unit percentiles"
Description: "Head circumference with unit percentiles in context of Pediatrics"

* insert napkon-metadata(2021-08-10, #draft, 0.1.0)
* insert mii-patient-reference

* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains loinc 1..*
* code.coding[loinc] = $loinc#9843-4
* code.coding[loinc].system 1..
* code.coding[loinc].code 1..

* insert value-quantity(#{Percentile}, "Percentile")

//Instance
Instance: instance-head-circumference-percentiles
InstanceOf: head-circumference-percentiles
Usage: #example
Title: "Instance of fhir resource head circumference (unit percentiles) in thr context of pediatrics"
Description: "Example of a head circumference"
* subject = Reference(ExamplePatient)
* valueQuantity.value = 75
* status = #final
