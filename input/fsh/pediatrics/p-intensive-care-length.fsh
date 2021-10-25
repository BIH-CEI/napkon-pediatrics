// Author: Gregor Lichtner
// Berlin Institute of Health | Charité
Profile: IntensiveCareTreatmentDuration
Parent: Observation
Id: intensive-care-treatment-duration
Title: "Intensive care treatment duration"
Description: "Duration of intensive care treatment"
* insert napkon-metadata(2021-09-15, #draft, 0.1.0)


* code
  * ^short = "Days in intensive care unit"
  * ^definition = "Days in intensive care unit"
  * ^comment = "Additional codes that translate or map to this code are allowed. For example a more granular LOINC code or code that is used locally in a system."
  * coding ^slicing.discriminator[0].type = #pattern
  * coding ^slicing.discriminator[0].path = "$this"
  * coding ^slicing.rules = #open
  * coding contains loinc 1..*
  * coding[loinc] = $loinc#74200-7 "Days in intensive care unit"
  * coding[loinc]
    * system 1..
    * code 1..
* value[x] only Quantity
* valueQuantity MS
  * system 1.. MS
  * system = $ucum
  * value 1.. MS
  * unit 1.. MS
  * unit = "day"
  * code 1.. MS
  * code = #d

Instance: IntensiveCareTreatmentDuration
InstanceOf: intensive-care-treatment-duration
Usage: #example
Title: "Intensive Care Treatment Duration"
Description: "Example of an intensive care treatment duration"
* valueQuantity.value = 10
* status = #final
