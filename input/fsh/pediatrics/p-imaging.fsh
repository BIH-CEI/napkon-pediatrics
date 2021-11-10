// Author: Thomas Haese
// Charité – Universitätsmedizin Berlin

Profile: Imaging
Parent: Procedure
Id: imaging
Title: "Imaging"
Description: "Imaging in the context of pediatrics"

* insert napkon-metadata(2021-11-04, #draft, 0.1.0)

* category 1.. MS
* category.coding MS
* category.coding ^slicing.discriminator.type = #pattern
* category.coding ^slicing.discriminator.path = "$this"
* category.coding ^slicing.rules = #open
* category.coding contains sct 1..1
* category.coding[sct] = $sct#103693007 "Diagnostic procedure (procedure)"

//SCT
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains sct 1..1
* code.coding[sct] from $ImagingProcedures (required)

//DICOM
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains dicom 1..1
* code.coding[dicom] from $ImagingProceduresDICOM (required)
