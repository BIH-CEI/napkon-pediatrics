// Author: Thomas Haese
// Charité - Universitätsmedizin Berlin
Profile: ChronicKidneyDiseasesPediatrics
Parent: $gecco-base-condition
Id: chronic-kidney-diseases
Title: "Chronic Kidney Diseases"
Description: "Chronic kidney diseases in the context of pediatrics"
* insert napkon-metadata(2021-10-18, #draft, 0.1.0)
* insert mii-patient-reference
* category 1..* MS
  * coding 1..1
  * coding ^slicing.discriminator.type = #pattern
  * coding ^slicing.discriminator.path = "$this"
  * coding ^slicing.rules = #open
  * coding contains nephrology 1..1 MS
  * coding[nephrology] = $sct#394589003 "Nephrology (qualifier value)"
  * coding[nephrology].system 1.. MS
  * coding[nephrology].code 1.. MS
* code.coding[sct] from ChronicKidneyDiseasesSCT (required)
* code.coding[icd10-gm] from ChronicKidneyDiseasesICD (required)

Instance: instance-chronic-kidney-diseases-sct
InstanceOf: chronic-kidney-diseases
Usage: #example
Title: "Instance of fhir resource chronic kidney diseases in the context of pediatrics"
Description: "Example or chronic kidney diseases"
* code.coding[sct] = $sct#90708001:246454002=255399007 "Kidney disease where Occurrence = Congenital"
* subject = Reference(ExamplePatient)
* recordedDate = "2021-11-08"
* verificationStatus.coding[conditionVerificationStatus] = $cs-condition-ver-status#confirmed
* verificationStatus.coding[snomed] = $sct#410605003 "Confirmed present (qualifier value)"

Instance: instance-chronic-kidney-diseases-icd
InstanceOf: chronic-kidney-diseases
Usage: #example
Title: "Instance of fhir resource chronic kidney diseases in the context of pediatrics"
Description: "Example or chronic kidney diseases"
* code.coding[icd10-gm] = $icd10-gm|"2021"#N39.9 "Krankheit des Harnsystems, nicht näher bezeichnet"
* subject = Reference(ExamplePatient)
* recordedDate = "2021-11-08"
* verificationStatus.coding[conditionVerificationStatus] = $cs-condition-ver-status#refuted
* verificationStatus.coding[snomed] = $sctIntl2021#410594000 "Definitely NOT present (qualifier value)"
