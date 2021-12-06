// Author: Thomas Haese, Gregor Lichtner
// Charité - Universitätsmedizin Berlin
Profile: HeadCircumferencePercentiles
Parent: $gecco-vital-signs-base
Id: head-circumference-percentiles
Title: "Head circumference with unit percentiles"
Description: "Head circumference with unit percentiles in context of Pediatrics"
* insert napkon-metadata(2021-08-10, #active, 1.0.0)
* insert mii-patient-reference
* code 1..1
  * coding 1..*
  * coding ^slicing.discriminator.type = #pattern
  * coding ^slicing.discriminator.path = "$this"
  * coding ^slicing.rules = #open
  * coding contains
      loinc 1..1 and snomed 1..1
  * coding[loinc] = $loinc#8289-1 "Head Occipital-frontal circumference Percentile"
  * coding[loinc].system 1..
  * coding[loinc].code 1..
  * coding[snomed] = $sct#363812007:370130000=415068004 "Head circumference where Property = Percentile value"
  * coding[snomed].system 1..
  * coding[snomed].code 1..
* insert value-quantity(#%)
* derivedFrom 1..1 MS
* derivedFrom only Reference(HeadCircumference)

Instance: instance-head-circumference-percentiles
InstanceOf: head-circumference-percentiles
Usage: #example
Title: "Instance of fhir resource head circumference (unit percentiles) in thr context of pediatrics"
Description: "Example of a head circumference"
* subject = Reference(ExamplePatient)
* valueQuantity.value = 75
* status = #final
* derivedFrom = Reference(instance-head-circumference)
* effectiveDateTime = "2015-02-07T13:28:17-05:00"
