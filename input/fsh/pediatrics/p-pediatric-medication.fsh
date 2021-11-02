//Author: Sally Brose
// Berlin Institute of Health | Charité


Profile: PediatricMedication
Parent: MedicationStatement
Id: pediatric-medication
Title: "Profile - MedicationStatement - Medikation"
Description: "Prescription of a medication or consumption by a pediatric patient."
* insert napkon-metadata(2021-09-23, #draft, 0.1.0)

* medicationCodeableConcept only CodeableConcept
* medicationCodeableConcept ^sliceName = "medicationCodeableConcept"
* medicationCodeableConcept.coding 1..1
* medicationCodeableConcept.coding ^slicing.discriminator.type = #pattern
* medicationCodeableConcept.coding ^slicing.discriminator.path = "$this"
* medicationCodeableConcept.coding ^slicing.rules = #open
* medicationCodeableConcept.coding contains sct 0..1
* medicationCodeableConcept from MedicationPediatrics (required)
* subject 1..1 MS
* subject = Reference(ExamplePatient)



Instance: pediatric-medication-instance
InstanceOf: pediatric-medication
Usage: #example
Title: "pediatric-medication-instance"
Description: "Example prescription of a medication or consumption by a pediatric patient "
* status = #active
* medicationCodeableConcept.coding = $sct#387458008 "Aspirin (substance)"
* subject = Reference(ExamplePatient)
* effectiveDateTime = "2021-09-23T13:06:00+02:00"
