// Author: Gregor Lichtner
// Berlin Institute of Health | Charité
Profile: PreadmissionMedications
Parent: List
Id: preadmission-medications
Title: "Preadmission Medications"
Description: ""
* code 1..1 MS
* code = $sct#281379000 "Pre-admission (qualifier value)" //TODO: ok? genug?
* entry.item only Reference(ImmunosuppresivePermanentMedication)
* subject 1..1 MS
* subject only $mii-reference

Instance: preadmission-medications
InstanceOf: preadmission-medications
Usage: #example
Title: "preadmission-medications"
Description: ""
* status = #current
* mode = #working
* entry[+].item = Reference(ImmunosuppresivePermanentMedication)
* subject = Reference(ExamplePatient)
