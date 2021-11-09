// Author: Thomas Haese
// Charité – Universitätsmedizin Berlin
Profile: SupportivePharmacotherapy
Parent: $mii-procedure
Id: supportive-pharmacotherapy
Title: "Supportive Pharmacotherapy"
Description: "Supportive Pharmacotherapy as an adjunct therapy in case of an infection with SARS-CoV-2 in the context of pediatrics"

* insert napkon-metadata(2021-08-10, #draft, 0.1.0)
* insert mii-patient-reference
* status from RestrictedEventStatus
* category.coding[sct] 1..1
* category.coding[sct] = $sct#277132007 "Therapeutic procedure (procedure)"
* code.coding[sct] 1..1
* code.coding[sct] from SupportivePharmacotherapy (required)

//Instance
Instance: instance-supportive-pharmacotherapy
InstanceOf: supportive-pharmacotherapy
Usage: #example
Title: "Instance of fhir resource supportive pharmacotherapy in the context of pediatrics"
Description: "Example of a supportive pharmacotherapy"
* status = #completed
* code = $sct#243132000:363701004=6710000 "Inhaled drug administration where Direct substance = Nitric oxide"
* subject = Reference(ExamplePatient)
* performedDateTime = "2021-11-08"
