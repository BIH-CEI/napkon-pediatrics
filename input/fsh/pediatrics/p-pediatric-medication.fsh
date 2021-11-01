//Author: Sally Brose
// Berlin Institute of Health | Charité


Profile: PediatricMedication
Parent: MedicationStatement
Id: pediatric-medication
Title: "Profile - MedicationStatement - Medikation"
Description: "Prescription of a medication or consumption by a pediatric patient."

* insert napkon-metadata(2021-09-23, #draft, 0.1.0)
* medication[x] only CodeableConcept
* medication[x] ^slicing.discriminator.type = #type
* medication[x] ^slicing.discriminator.path = "$this"
* medication[x] ^slicing.rules = #open
* medicationCodeableConcept only CodeableConcept
* medicationCodeableConcept ^sliceName = "medicationCodeableConcept"
* medicationCodeableConcept.coding 1..
* medicationCodeableConcept.coding ^slicing.discriminator.type = #pattern
* medicationCodeableConcept.coding ^slicing.discriminator.path = "$this"
* medicationCodeableConcept.coding ^slicing.rules = #open
* medicationCodeableConcept from MedicationPediatrics (required)
* subject 1..1 MS
* subject = Reference(ExamplePatient)



Instance: pediatric-medication-instance
InstanceOf: pediatric-medication
Usage: #example
Title: "pediatric-medication-instance"
Description: "Example prescription of a medication or consumption by a pediatric patient "
* status = #active
* medication[x] MS
* subject = Reference(ExamplePatient)
//müsste Zeile 3 lieber "Medication.ingredient.item[x]" sein?
