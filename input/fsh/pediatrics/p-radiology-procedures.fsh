//Author: Sally Brose
// Berlin Institute of Health | Charité

Profile: RadiologyProcedures
Parent: Procedure
Id: radiology-procedures
Title: "RadiologyProcedures"
Description: "Records an application of a radiological imaging procedures performed on the patient (COVID-19 imaging procedures)"
* insert napkon-metadata(2021-09-23, #draft, 0.1.0)
* category.coding ^slicing.discriminator[0].type = #pattern
* category.coding ^slicing.discriminator[0].path = "$this"
* category.coding ^slicing.rules = #open
* category.coding contains sct 1..1
* category.coding[sct] = $sct#103693007 "Diagnostic procedure (procedure)" 
* code 1..1 MS
* code from ImagingPediatrics (required)
* subject 1..1 MS
* subject only Reference(Patient)


Instance: RadiologyProcedures
InstanceOf: radiology-procedures
Usage: #example
Title: "radiology-procedure-instance"
Description: "Example of a performed radiology/imaging procedure for pediatric patients when treating COVID-19."
* status = #completed
* code = $sct#103693007 "Diagnostic procedure (procedure)" 
* subject = Reference(ExamplePatient)
* performedDateTime = "2021-09-23T13:06:00+02:00"