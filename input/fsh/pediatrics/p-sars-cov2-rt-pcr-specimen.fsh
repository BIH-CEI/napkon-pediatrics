// Author: Gregor Lichtner
// Charité - Universitätsmedizin Berlin
Profile: SarsCoV2RTPCRSpecimen
Parent: $mii-observation-lab
Id: sars-cov2-rt-pcr-specimen
Title: "SARS-CoV-2 RT PCR Specimen"
Description: "Qualitative detection of SARS-CoV-2 in specimens by RT-PCR"
* insert napkon-metadata(2021-11-09, #active, 1.0.0)
* insert mii-patient-reference
* code 1..1 MS
  * coding 1.. MS
  * coding ^slicing.discriminator.type = #pattern
  * coding ^slicing.discriminator.path = "$this"
  * coding ^slicing.rules = #open
  * coding contains loinc 1..1 MS
  * coding[loinc] = $loinc#94309-2 "SARS-CoV-2 (COVID-19) RNA [Presence] in Specimen by NAA with probe detection"
  * coding[loinc].system 1.. MS
  * coding[loinc].code 1.. MS
* valueQuantity ..0
* valueCodeableConcept 1..
* valueCodeableConcept from $detected-not-detected-inconclusive (required)
* specimen 1..1
* specimen only Reference(SpecimenExcreta)

Instance: SarsCoV2RTPCRStoolDetected
InstanceOf: sars-cov2-rt-pcr-specimen
Usage: #example
Title: "SARS-CoV-2 RT PCR Stool Detected"
Description: "Example of a SARS-CoV-2 RT PCR from a stool sample that is detected"
* identifier.type = $cs-v2-0203#OBI
* identifier.system = "https://www.charite.de/fhir/CodeSystem/lab-identifiers"
* identifier.value = "1988-5_c-reactive-protein-mass-per-volume-in-serum-or-plasma"
* identifier.assigner = Reference(Organization/Charité)
* status = #final
* subject = Reference(ExamplePatient)
* valueCodeableConcept = $sct#260373001 "Detected (qualifier value)"
* specimen = Reference(SpecimenStool)
* effectiveDateTime = "2021-11-09"

Instance: SarsCoV2RTPCRStoolNotDetected
InstanceOf: sars-cov2-rt-pcr-specimen
Usage: #example
Title: "SARS-CoV-2 RT PCR Stool Not Detected"
Description: "Example of a SARS-CoV-2 RT PCR from a stool sample that is not detected"
* identifier.type = $cs-v2-0203#OBI
* identifier.system = "https://www.charite.de/fhir/CodeSystem/lab-identifiers"
* identifier.value = "1988-5_c-reactive-protein-mass-per-volume-in-serum-or-plasma"
* identifier.assigner = Reference(Organization/Charité)
* status = #final
* subject = Reference(ExamplePatient)
* valueCodeableConcept = $sct#260415000 "Not detected (qualifier value)"
* specimen = Reference(SpecimenStool)
* effectiveDateTime = "2021-11-09"

Instance: SarsCoV2RTPCRUrineInconclusive
InstanceOf: sars-cov2-rt-pcr-specimen
Usage: #example
Title: "SARS-CoV-2 RT PCR Urine Inconclusive"
Description: "Example of a SARS-CoV-2 RT PCR from a urine sample that is inconclusive"
* identifier.type = $cs-v2-0203#OBI
* identifier.system = "https://www.charite.de/fhir/CodeSystem/lab-identifiers"
* identifier.value = "1988-5_c-reactive-protein-mass-per-volume-in-serum-or-plasma"
* identifier.assigner = Reference(Organization/Charité)
* status = #final
* subject = Reference(ExamplePatient)
* valueCodeableConcept = $sct#419984006 "Inconclusive (qualifier value)"
* specimen = Reference(SpecimenUrine)
* effectiveDateTime = "2021-11-09"
