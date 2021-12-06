// Author: Gregor Lichtner
// Charité - Universitätsmedizin Berlin
Profile: IntensiveCareTreatmentDuration
Parent: Observation
Id: intensive-care-treatment-duration
Title: "Intensive care treatment duration"
Description: "Duration of intensive care treatment"
* insert napkon-metadata(2021-09-15, #active, 1.0.0)
* insert mii-patient-reference
* code
  * coding ^slicing.discriminator[0].type = #pattern
  * coding ^slicing.discriminator[0].path = "$this"
  * coding ^slicing.rules = #open
  * coding contains loinc 1..*
  * coding[loinc] = $loinc#74200-7 "Days in intensive care unit"
  * coding[loinc]
    * system 1..
    * code 1..
* insert value-quantity(#d)

Instance: IntensiveCareTreatmentDuration
InstanceOf: intensive-care-treatment-duration
Usage: #example
Title: "Intensive Care Treatment Duration"
Description: "Example of an intensive care treatment duration"
* valueQuantity.value = 10
* status = #final
* subject = Reference(ExamplePatient)
