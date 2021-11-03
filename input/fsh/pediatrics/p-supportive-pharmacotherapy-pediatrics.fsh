// Author: Thomas Haese
// Charité – Universitätsmedizin Berlin

Profile: SupportivePharmacotherapy
Parent: Condition
Id: supportive-pharmacotherapy
Title: "Supportive Pharmacotherapy"
Description: "Supportive Pharmacotherapy as an adjunct therapy in case of an infection with SARS-CoV-2 in the context of pediatrics"

* insert napkon-metadata(2021-08-10, #draft, 0.1.0)

* category 1..
* category.coding MS
* category.coding ^slicing.discriminator.type = #pattern
* category.coding ^slicing.discriminator.path = "$this"
* category.coding ^slicing.rules = #open
* category.coding contains supportivePharmacotherapy  1..1 MS
* category.coding[supportivePharmacotherapy] = $sct#169414008
* category.coding[supportivePharmacotherapy].system 1.. MS
* category.coding[supportivePharmacotherapy].code 1.. MS

* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains
    sct 1..1
* code.coding[sct] from $SupportivePharmacotherapy (required)

//Instance
Instance: instance-supportive-pharmacotherapy
InstanceOf: supportive-pharmacotherapy
Usage: #example
Title: "Instance of fhir resource supportive pharmacotherapy in the context of pediatrics"
Description: "Example of a supportive pharmacotherapy"

* code = $sct#127784009 "Inhaled bronchodilator therapy (procedure)"
* subject = Reference(ExamplePatient)
