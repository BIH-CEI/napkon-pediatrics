// Author: Gregor Lichtner
// Charité - Universitätsmedizin Berlin
Profile: PediatricImagingStudy
Parent: ImagingStudy
Id: pediatric-imaging-study
Title: "Pediatric Imaging Study"
Description: "Records an application of a radiological imaging procedures performed on the patient (COVID-19 imaging procedures)"
* insert napkon-metadata(2021-09-23, #draft, 0.1.0)
* insert mii-patient-reference
* status = #registered
* modality 1..* MS
* modality from ImagingProceduresDICOM (extensible)
* procedureReference 1..1 MS
* procedureReference only Reference(ImagingProcedures)
* procedureCode 1..* MS
* procedureCode from $loinc-rnsa-radiology-playbook (extensible)

Instance: ImagingStudyPTHeart
InstanceOf: pediatric-imaging-study
Usage: #example
Title: "Imaging Study"
Description: "Example of a concrete imaging study performed on a patient"
* subject = Reference(ExamplePatient)
* modality = $dicom#PT
* procedureCode = $loinc#44137-8 "PT Heart"
* procedureReference = Reference(ImagingProcedures)
