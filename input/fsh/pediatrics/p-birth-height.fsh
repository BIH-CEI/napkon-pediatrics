//Author: Thomas Haese
Profile: BirthHeight
Parent: $gecco-body-height
Id: birth-height
Title: "Birth Height"
Description: "Birth Height of a patient in context of Pediatrics"
* insert napkon-metadata(2021-08-10, #draft, 0.1.0)

//Instance
Instance: instance-birth-height
InstanceOf: birth-height
Usage: #example
Title: "Instance of fhir resource birth height in the context of pediatrics"
Description: "Example of birth height"
//Values
* valueQuantity = 25 'cm' "centimeter"
* status = #final
* subject = Reference(ExamplePatient)
* effectiveDateTime = "2015-02-07T13:28:17-05:00"
