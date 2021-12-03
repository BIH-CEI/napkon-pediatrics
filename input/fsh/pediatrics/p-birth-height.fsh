// Author: Thomas Haese
// Charité - Universitätsmedizin Berlin
Profile: BirthHeight
Parent: $gecco-body-height
Id: birth-height
Title: "Birth Height"
Description: "Birth Height of a patient in context of Pediatrics"
* insert napkon-metadata(2021-08-10, #active, 1.0.0)
* code 1..1
  * coding 1..*
  * coding contains
      loinc-pedi 1..*
  * coding[loinc-pedi] = $loinc#89269-5 "Body height Measured --at birth"
  * coding[loinc-pedi].system 1..
  * coding[loinc-pedi].code 1..
* insert value-quantity(#cm)

Instance: instance-birth-height
InstanceOf: birth-height
Usage: #example
Title: "Instance of fhir resource birth height in the context of pediatrics"
Description: "Example of birth height"
* valueQuantity = 25 #cm "centimeter"
* status = #final
* subject = Reference(ExamplePatient)
* effectiveDateTime = "2015-02-07T13:28:17-05:00"
