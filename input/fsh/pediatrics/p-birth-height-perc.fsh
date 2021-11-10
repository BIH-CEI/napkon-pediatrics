// Author: Thomas Haese, Gregor Lichtner
// Charité – Universitätsmedizin Berlin
Profile: BirthHeightPercentiles
Parent: $gecco-vital-signs-base
Id: birth-height-percentiles
Title: "Birth Height with unit percentiles"
Description: "Birth Height with unit percentiles in context of Pediatrics"
* insert napkon-metadata(2021-08-10, #draft, 0.1.0)
* insert mii-patient-reference
* code 1..1
  * coding 1..*
  * coding ^slicing.discriminator.type = #pattern
  * coding ^slicing.discriminator.path = "$this"
  * coding ^slicing.rules = #open
  * coding contains
      loinc 1..1 and snomed 1..1
  * coding[loinc] = $loinc#8303-0 "Body height [Percentile]"
  * coding[loinc].system 1..
  * coding[loinc].code 1..
  * coding[snomed] = $sct#50373000:370130000=415068004 "Body height where Property = Percentile value"
  * coding[snomed].system 1..
  * coding[snomed].code 1..
* insert value-quantity(#%, "%")
* derivedFrom 1..1 MS
* derivedFrom only Reference(BirthHeight)

Instance: birth-height-circumference-percentiles
InstanceOf: birth-height-percentiles
Usage: #example
Title: "Instance of fhir resource birth height (unit percentiles) in the context of pediatrics"
Description: "Example of a birth height"
* valueQuantity.value = 75
* status = #final
* subject = Reference(ExamplePatient)
* derivedFrom = Reference(instance-birth-height)
* effectiveDateTime = "2015-02-07T13:28:17-05:00"
