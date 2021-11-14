// Author: Sally Brose
// Berlin Institute of Health | Charité
Profile: ImagingProcedures
Parent: $mii-procedure
Id: imaging-procedures
Title: "Imaging Procedures"
Description: "Records an application of a radiological imaging procedures performed on the patient (COVID-19 imaging procedures)"
* insert napkon-metadata(2021-09-23, #draft, 0.1.0)
* category 1..
  * coding[sct] 1..1
  * coding[sct] = $sct#103693007 "Diagnostic procedure (procedure)"
* code
  * coding ^slicing.discriminator.type = #pattern
  * coding ^slicing.discriminator.path = "$this"
  * coding ^slicing.rules = #open
  * coding contains dicom 0..2
  * coding[sct] from ImagingProceduresSCT (required)
  * coding[dicom] ^patternCoding.system = $dicom
  * coding[dicom].system 1.. MS
  * coding[dicom].system = $dicom
  * coding[dicom].code 1.. MS
  * coding[dicom] from ImagingProceduresDICOM (required)

Instance: ImagingProcedures
InstanceOf: imaging-procedures
Usage: #example
Title: "imaging-procedure-instance"
Description: "Example of a performed radiology/imaging procedure for pediatric patients when treating COVID-19."
* status = #completed
* code.coding[sct] = $sct#450436003 "Positron emission tomography with computed tomography (procedure)"
* code.coding[dicom] = $dicom#PT "Positron emission tomography"
//* code.coding[dicom] = $dicom#CT "Computed Tomography"
* subject = Reference(ExamplePatient)
* performedDateTime = "2021-09-23T13:06:00+02:00"
