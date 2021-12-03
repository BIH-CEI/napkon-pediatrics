// Author: Sally Brose
// Charité - Universitätsmedizin Berlin
Profile: ImagingProcedures
Parent: $mii-procedure
Id: imaging-procedures
Title: "Imaging Procedures"
Description: "Records an application of a radiological imaging procedures performed on the patient (COVID-19 imaging procedures)"
* insert napkon-metadata(2021-09-23, #active, 1.0.0)
* category 1..1 MS
  * coding[sct] 1..1
  * coding[sct] = $sct#103693007 "Diagnostic procedure (procedure)"
* code
  * coding[sct] from ImagingProceduresSCT (required)

Instance: ImagingProcedures
InstanceOf: imaging-procedures
Usage: #example
Title: "imaging-procedure-instance"
Description: "Example of a performed radiology/imaging procedure for pediatric patients when treating COVID-19."
* status = #completed
* code.coding[+] = $sct#450436003 "Positron emission tomography with computed tomography (procedure)"
* subject = Reference(ExamplePatient)
* performedDateTime = "2021-09-23T13:06:00+02:00"
