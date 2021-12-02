// Author: Gregor Lichtner
// Charité - Universitätsmedizin Berlin
Profile: ImmunosuppresivePermanentMedication
Parent: $mii-medication-statement
Id: immunosuppresive-permanent-medication
Title: "Immunosuppresive Permanent Medication"
Description: "Immunosuppresive Permanent Medication"
* insert napkon-metadata(2021-09-13, #draft, 0.1.0)
* medicationCodeableConcept
  * coding ^slicing.discriminator[0].type = #pattern
  * coding ^slicing.discriminator[0].path = "$this"
  * coding ^slicing.rules = #open
  * coding contains sct 0..1 and atc 0..1
  * coding[sct] from immunosuppressive-permament-medications (required)
  * coding[atc] from immunosuppressive-permament-medications-atc (required)

Instance: ImmunosuppresivePermanentMedication
InstanceOf: immunosuppresive-permanent-medication
Usage: #example
Title: "Immunosuppresive Permanent Medication"
Description: "Example of a Immunosuppresive Permanent Medication"
* status = #completed
* medicationCodeableConcept.coding[sct] = $nped#P7 "Anti-CD3/CD19 antibody"
* medicationCodeableConcept.coding[atc] = $atcde#L01XC19 "Blinatumomab"
* subject = Reference(ExamplePatient)
* effectiveDateTime = "2021-09-14T13:06:00+02:00"
