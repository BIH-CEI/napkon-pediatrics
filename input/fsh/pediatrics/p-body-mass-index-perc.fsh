// Author: Thomas Haese, Gregor Lichtner
// Charité - Universitätsmedizin Berlin
Profile: BodyMassIndexPercentiles
Parent: $gecco-vital-signs-base
Id: body-mass-index-percentiles
Title: "Body Mass Index with unit percentiles"
Description: "Body mass index with unit percentiles in context of Pediatrics"
* insert napkon-metadata(2021-08-10, #active, 1.0.0)
* insert mii-patient-reference
* code 1..1
  * coding 1..*
  * coding ^slicing.discriminator.type = #pattern
  * coding ^slicing.discriminator.path = "$this"
  * coding ^slicing.rules = #open
  * coding contains
      loinc 1..1 and snomed 1..1
  * coding[loinc] = $loinc#59574-4 "Body mass index (BMI) [Percentile]"
  * coding[loinc].system 1..
  * coding[loinc].code 1..
  * coding[snomed] = $sct#60621009:370130000=415068004 "Body mass index where Property = Percentile value"
  * coding[snomed].system 1..
  * coding[snomed].code 1..
* insert value-quantity(#%)
* derivedFrom 1..1 MS
* derivedFrom only Reference(BodyMassIndex)

Instance: instance-body-mass-index-percentiles
InstanceOf: body-mass-index-percentiles
Usage: #example
Title: "Instance of fhir resource body mass index in the context of pediatrics"
Description: "Example of body mass index with unit percentiles"
* valueQuantity.value = 75
* status = #final
* subject = Reference(ExamplePatient)
* derivedFrom = Reference(instance-body-mass-index)
* effectiveDateTime = "2015-02-07T13:28:17-05:00"
