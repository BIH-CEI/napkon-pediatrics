// Author: Thomas Haese
// Charité – Universitätsmedizin Berlin

/*
Alternative zu p-chronic-kidney-diseases. Theoretsich könnte man
vom GECCO ableiten.
*/

Profile: ChronicKidneyDiseases
Parent: $gecco-base-condition
Id: chronic-kidney-diseases
Title: "Chronic Kidney Diseases"
Description: "Chronic kidney diseases in the context of pediatrics"

* insert napkon-metadata(2021-10-18, #draft, 0.1.0)
/*
* category 1.. MS
* category.coding MS
* category.coding ^slicing.discriminator.type = #pattern
* category.coding ^slicing.discriminator.path = "$this"
* category.coding ^slicing.rules = #open
* category.coding contains nephrology 1..1 MS
* category.coding[nephrology] = $sct#394584008
* category.coding[nephrology].system 1.. MS
* category.coding[nephrology].code 1.. MS
*/
/*
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains
    icd10-gm 0..1 and
    sct 0..1
*/
* code.coding[sct] from $ChronicKidneyDiseases (required)
* code.coding[icd10-gm] from $ChronicKidneyDiseasesICD (required)

* subject only Reference(Patient)

Instance: instance-chronic-kidney-diseases-sct
InstanceOf: chronic-kidney-diseases
Usage: #example
Title: "Instance of fhir resource chronic kidney diseases in the context of pediatrics"
Description: "Example or chronic kidney diseases"

* code = $sct#82525005 "Congenital cystic kidney disease (disorder)"
* subject = Reference(ExamplePatient)


Instance: instance-chronic-kidney-diseases-icd
InstanceOf: chronic-kidney-diseases
Usage: #example
Title: "Instance of fhir resource chronic kidney diseases in the context of pediatrics"
Description: "Example or chronic kidney diseases"

* code = $icd10-gm#N39.9 "Krankheit des Harnsystems, nicht näher bezeichnet"
* subject = Reference(ExamplePatient)
