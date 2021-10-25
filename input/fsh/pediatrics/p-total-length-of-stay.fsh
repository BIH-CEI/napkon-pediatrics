// Author: Gregor Lichtner
// Berlin Institute of Health | Charité
Profile: TotalLengthOfStay
Parent: Observation
Id: total-length-of-stay
Title: "Total length of stay"
Description: "Total length of stay"
* insert napkon-metadata(2021-09-15, #draft, 0.1.0)
* code
  * ^short = "Days in intensive care unit"
  * ^definition = "Days in intensive care unit"
  * ^comment = "Additional codes that translate or map to this code are allowed. For example a more granular LOINC code or code that is used locally in a system."
  * coding ^slicing.discriminator[0].type = #pattern
  * coding ^slicing.discriminator[0].path = "$this"
  * coding ^slicing.rules = #open
  * coding contains loinc 1..*
  * coding[loinc] = $loinc#78033-8 "Hospital stay duration"
  * coding[loinc]
    * system 1..
    * code 1..
* value[x] MS
* value[x] only Quantity
* valueQuantity MS
  * system 1.. MS
  * system = $ucum
  * value 1.. MS
  * unit 1.. MS
  * unit = "day"
  * code 1.. MS
  * code = #d

Instance: TotalLengthOfStay
InstanceOf: total-length-of-stay
Usage: #example
Title: "Total Length of Stay"
Description: "Example of an total length of stay"
* valueQuantity.value = 10
* status = #final
