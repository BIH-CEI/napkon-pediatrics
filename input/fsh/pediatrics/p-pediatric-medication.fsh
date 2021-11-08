//Author: Sally Brose
// Berlin Institute of Health | Charité
Profile: PediatricMedication
Parent: $mii-medication-statement
Id: pediatric-medication
Title: "- MedicationStatement - Medikation"
Description: "Prescription of a medication or consumption by a pediatric patient."
* insert napkon-metadata(2021-09-23, #draft, 0.1.0)
* medication[x] only CodeableConcept
* medicationCodeableConcept.coding contains sct 0..1 and atcde 0..1
* medicationCodeableConcept.coding[sct] from MedicationPediatricsSCT (required)
* medicationCodeableConcept.coding[atcde] from MedicationPediatricsATCDE (sct

Instance: PediatricMedicationSCT
InstanceOf: pediatric-medication
Usage: #example
Title: "Pediatric Medication SNOMED CT"
Description: "Example prescription of a medication or consumption by a pediatric patient "
* status = #active
* medicationCodeableConcept.coding[sct] = $sct#387458008 "Aspirin (substance)"
* subject = Reference(ExamplePatient)
* effectiveDateTime = "2021-09-23T13:06:00+02:00"


Instance: PediatricMedicationATCDE
InstanceOf: pediatric-medication
Usage: #example
Title: "Pediatric Medication ATC DE"
Description: "Example prescription of a medication or consumption by a pediatric patient "
* status = #active
* medicationCodeableConcept.coding[atcde] = $atcde#J06BA01 "Immunglobuline, normal human, zur extravasalen Anwendung"
* subject = Reference(ExamplePatient)
* effectiveDateTime = "2021-09-23T13:06:00+02:00"
