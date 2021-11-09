// Author: Gregor Lichtner
// Berlin Institute of Health | Charité
Profile: SpecimenExcreta
Parent: Specimen
Id: specimen-excreta
Title: "Specimen Excreta"
Description: "Urine and Stool samples"
* insert napkon-metadata(2021-11-09, #draft, 0.1.0)
* insert mii-patient-reference
* type 1..1 MS
* type from Excreta (required)

Instance: SpecimenStool
InstanceOf: specimen-excreta
Usage: #example
Title: "Specimen Stool"
Description: "Stool sample"
* type = $cs-v2-0486#STL "Stool = Fecal"
* subject = Reference(ExamplePatient)

Instance: SpecimenUrine
InstanceOf: specimen-excreta
Usage: #example
Title: "Specimen Urine"
Description: "Urine sample"
* type = $cs-v2-0486#UR "Urine"
* subject = Reference(ExamplePatient)
