//Author: Sally Brose
// Berlin Institute of Health | Charité

Profile: TransfusionTherapy
Parent: Procedure
Id: transfusion-therapy
Title: "Transfusion Therapy"
Description: "Application of a blood transfusion therapy"
* insert napkon-metadata(2021-09-23, #draft, 0.1.0)
* category.coding ^slicing.discriminator[0].type = #pattern
* category.coding ^slicing.discriminator[0].path = "$this"
* category.coding ^slicing.rules = #open
* category.coding contains sct 1..1
* category.coding[sct] = $sct#277132007 "Therapeutic procedure (procedure)" //"include all children" is-a kennzeichnen? muss der Code hier gelistet werden wenn unen das ValueSet genannt wird?
* code 1..1 MS
* code from BloodTransfusionTherapy (required)
* status 1..1 MS
* status from EventStatus(required)
* subject 1..1 MS
* subject only Reference(Patient)
// * actor 1..1 MS
// *actor only Reference(Patient)?
* Procedure.focalDevice.manipulated 1..1 MS //was müsste an dieser Stelle hinkommen?
* Procedure.focalDevice.manipulated only Reference(Device) // kommt hier nach der sct code?

Instance: TransfusionTherapy
InstanceOf: transfusion-therapy //sollte das lieber blood-transfuion-therapy heißen?
Usage: #example
Title: "transfusion-therapy-instance"
Description: "Example an application of a blood transfusion therapy"
* status = #completed
* code =  $sct##277132007 "Therapeutic procedure (procedure)"
* subject MS // oder wird das so geschrieben * subject  only Reference(Patient)
* Procedure.focalDevice.manipulated MS // oder wird das so geschrieben * foalDevice.manipulated only Reference(Device)
