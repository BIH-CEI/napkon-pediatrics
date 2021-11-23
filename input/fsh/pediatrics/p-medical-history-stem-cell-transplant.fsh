// Author: Sally Brose
// Charité - Universitätsmedizin Berlin
Profile: MedicalHistoryStemCellTransplant
Parent: $gecco-base-condition
Id: medical-history-stem-cell-transplant
Title: "Medical History Stem Cells Transplant"
Description: "This profile describes a stem cell transplant for a pediatric patient."
* insert napkon-metadata(2021-09-23, #draft, 0.1.0)
* insert mii-patient-reference
* category 1.. MS
  * coding 1..1
  * coding ^slicing.discriminator.type = #pattern
  * coding ^slicing.discriminator.path = "$this"
  * coding ^slicing.rules = #open
  * coding contains hematology 1..1 MS
  * coding[hematology] = $sct#394803006 "Clinical hematology (qualifier value)"
  * coding[hematology].system 1.. MS
  * coding[hematology].code 1.. MS
* code.coding[sct] from MedicalHistoryStemCellTransplant (required)
* code.coding[icd10-gm] from MedicalHistoryStemCellTransplantICD (required)

Instance: medical-history-stem-cell-transplant-instance
InstanceOf: medical-history-stem-cell-transplant
Usage: #example
Title: "medical-history-stem-cell-transplant-instance"
Description: "This profile describes a stem cell transplant for a pediatric patient."
* verificationStatus.coding[conditionVerificationStatus] = $cs-condition-ver-status#confirmed
* verificationStatus.coding[snomed] = $sct#410605003 "Confirmed present (qualifier value)"
* code.coding[sct] = $sct#2631000119108 "History of bone marrow transplant (situation)"
* code.coding[icd10-gm] = $icd10-gm|"2022"#Z94.80 "Zustand nach hämatopoetischer Stammzelltransplantation ohne gegenwärtige Immunsuppression"
* subject = Reference(ExamplePatient)
* recordedDate = "2021-11-09"
