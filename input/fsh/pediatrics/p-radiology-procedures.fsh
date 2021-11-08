// Author: Sally Brose
// Berlin Institute of Health | Charité
Profile: RadiologyProcedures
Parent: $mii-procedure
Id: radiology-procedures
Title: "RadiologyProcedures"
Description: "Records an application of a radiological imaging procedures performed on the patient (COVID-19 imaging procedures)"
* insert napkon-metadata(2021-09-23, #draft, 0.1.0)
* category 1..
  * coding[sct] 1..1
  * coding[sct] = $sct#103693007 "Diagnostic procedure (procedure)"
* code
  * coding[sct] from ImagingPediatrics (required)

Instance: RadiologyProcedures
InstanceOf: radiology-procedures
Usage: #example
Title: "radiology-procedure-instance"
Description: "Example of a performed radiology/imaging procedure for pediatric patients when treating COVID-19."
* status = #completed
* code.coding[sct] = $sct#450436003 "Positron emission tomography with computed tomography (procedure)"
* subject = Reference(ExamplePatient)
* performedDateTime = "2021-09-23T13:06:00+02:00"
