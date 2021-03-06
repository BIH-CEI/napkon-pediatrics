// Author: Gregor Lichtner
// Charité - Universitätsmedizin Berlin
Profile: PreadmissionMedications
Parent: List
Id: preadmission-medications
Title: "Preadmission Medications"
Description: "List of medications taken before admission to a hospital"
* insert napkon-metadata(2021-12-03, #active, 1.0.0)
* insert mii-patient-reference
* code 1..1 MS
* code = $sct#394829006 "Past medication (situation)"
* entry.item only Reference(ImmunosuppresivePermanentMedication)

Instance: preadmission-medications
InstanceOf: preadmission-medications
Usage: #example
Title: "preadmission-medications"
Description: "Example list of medications before the admission of the patient to the hospital"
* status = #current
* mode = #working
* entry[0].item = Reference(ImmunosuppresivePermanentMedication)
* subject = Reference(ExamplePatient)
