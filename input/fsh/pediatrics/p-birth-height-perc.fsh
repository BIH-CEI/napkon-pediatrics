// Author: Thomas Haese
// Charité – Universitätsmedizin Berlin

Profile: BirthHeightPercentiles
Parent: Observation
Id: birth-height-percentiles
Title: "Birth Height with unit percentiles"
Description: "Birth Height with unit percentiles in context of Pediatrics"

* insert napkon-metadata(2021-08-10, #draft, 0.1.0)
* insert mii-patient-reference

* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains loinc 1..*
* code.coding[loinc] = $loinc#89269-5
* code.coding[loinc].system 1..
* code.coding[loinc].code 1..
* insert value-quantity(#{Percentile}, "Percentile")

//Instance regarding percentiles
Instance: birth-height-circumference-percentiles
InstanceOf: birth-height-percentiles
Usage: #example
Title: "Instance of fhir resource birth height (unit percentiles) in the context of pediatrics"
Description: "Example of a birth height"
* valueQuantity.value = 75
* status = #final
* subject = Reference(ExamplePatient)
