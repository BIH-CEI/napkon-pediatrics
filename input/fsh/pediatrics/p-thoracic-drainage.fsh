// Author: Gregor Lichtner
// Berlin Institute of Health | Charité
Profile: ThoracicDrainage
Parent: $mii-procedure
Id: thoracic-drainage
Title: "Thoracic Drainge"
Description: "Application of a thoraric drainage"
* insert napkon-metadata(2021-09-13, #draft, 0.1.0)
* status from RestrictedEventStatus
* category 1..
  * coding[sct] 1..1
  * coding[sct] = $sct#277132007 "Therapeutic procedure (procedure)"
* code
  * coding[sct] 1..1
  * coding[sct] = $sct#34193001 "Closed drainage of chest (procedure)"

Instance: ThoracicDrainageNotDone
InstanceOf: thoracic-drainage
Usage: #example
Title: "Thoracic Drainage Not Done"
Description: "Example of a thoracic drainage that was not performed"
* status = #not-done
* subject = Reference(ExamplePatient)
* performedDateTime = "2021-09-14T13:06:00+02:00"

Instance: ThoracicDrainageUnknown
InstanceOf: thoracic-drainage
Usage: #example
Title: "Thoracic Drainage Unknown"
Description: "Example of a thoracic drainage for which it is not known if it was performed or not"
* status = #unknown
* subject = Reference(ExamplePatient)
* performedDateTime = "2021-09-14T13:06:00+02:00"
