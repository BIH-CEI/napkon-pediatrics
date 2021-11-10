// Author: Thomas Haese
// Charité – Universitätsmedizin Berlin
Profile: HeadCircumference
Parent: $gecco-vital-signs-base
Id: head-circumference
Title: "Head circumference"
Description: "Head circumference of a patient in context of Pediatrics"
* insert napkon-metadata(2021-08-10, #draft, 0.1.0)
* insert mii-patient-reference
* code 1..1
  * coding 1..*
  * coding ^slicing.discriminator.type = #pattern
  * coding ^slicing.discriminator.path = "$this"
  * coding ^slicing.rules = #open
  * coding contains
      loinc 1..* and snomed 0..*
  * coding[loinc] = $loinc#9843-4 "Head Occipital-frontal circumference"
  * coding[loinc].system 1..
  * coding[loinc].code 1..
  * coding[snomed] = $sct#363812007 "Head circumference (observable entity)"
  * coding[snomed].system 1..
  * coding[snomed].code 1..
* insert value-quantity(#cm, "centimeter")

Instance: instance-head-circumference
InstanceOf: head-circumference
Usage: #example
Title: "Instance of fhir resource head circumference (unit cm) in the context of pediatrics"
Description: "Example of a head circumference"
* valueQuantity = 10 'cm' "centimeter"
* status = #final
* subject = Reference(ExamplePatient)
* effectiveDateTime = "2015-02-07T13:28:17-05:00"
