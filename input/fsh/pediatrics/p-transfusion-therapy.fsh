//Author: Sally Brose
// Berlin Institute of Health | Charité
Profile: TransfusionTherapy
Parent: $mii-procedure
Id: transfusion-therapy
Title: "Transfusion Therapy"
Description: "Application of a blood transfusion therapy"
* insert napkon-metadata(2021-09-23, #draft, 0.1.0)
* insert mii-patient-reference
* category.coding[sct] = $sct#277132007 "Therapeutic procedure (procedure)"
* code.coding[sct] 1..1
* code.coding[sct] from BloodTransfusionTherapy (required)

Instance: TransfusionTherapy
InstanceOf: transfusion-therapy
Usage: #example
Title: "transfusion-therapy-instance"
Description: "Example an application of a blood transfusion therapy"
* status = #completed
* code =  $sct##277132007 "Therapeutic procedure (procedure)"
* subject = Reference(Patient)
* performedDateTime = "2021-09-23T13:06:00+02:00"
