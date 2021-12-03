// Author: Thomas Haese
// Charité - Universitätsmedizin Berlin
Profile: BodyMassIndex
Parent: $gecco-vital-signs-base
Id: body-mass-index
Title: "Body Mass Index"
Description: "Body mass index of a patient in context of Pediatrics"
* insert napkon-metadata(2021-08-10, #active, 1.0.0)
* insert mii-patient-reference
* code 1..1
  * coding 1..*
  * coding ^slicing.discriminator.type = #pattern
  * coding ^slicing.discriminator.path = "$this"
  * coding ^slicing.rules = #open
  * coding contains
      loinc 1..* and snomed 0..*
  * coding[loinc] = $loinc#39156-5 "Body mass index (BMI) [Ratio]"
  * coding[loinc].system 1..
  * coding[loinc].code 1..
  * coding[snomed] = $sct#60621009 "Body mass index (observable entity)"
  * coding[snomed].system 1..
  * coding[snomed].code 1..
* insert value-quantity(#kg/m2)

Instance: instance-body-mass-index
InstanceOf: body-mass-index
Usage: #example
Title: "Instance of fhir resource body mass index in the context of pediatrics"
Description: "Example of body mass index"
* valueQuantity.value = 25
* status = #final
* subject = Reference(ExamplePatient)
* effectiveDateTime = "2015-02-07T13:28:17-05:00"
