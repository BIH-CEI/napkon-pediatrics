// Author: Gregor Lichtner
// Charité - Universitätsmedizin Berlin
Profile: ThoracicDrainage
Parent: $mii-procedure
Id: thoracic-drainage
Title: "Thoracic Drainge"
Description: "Application of a thoracic drainage"
* insert napkon-metadata(2021-09-13, #draft, 0.1.0)
* status from RestrictedEventStatus
* category 1..
  * coding[sct] 1..1
  * coding[sct] = $sct#277132007 "Therapeutic procedure (procedure)"
* code
  * coding[sct] 1..1
  * coding[sct] = $sct#264957007 "Insertion of pleural tube drain (procedure)"

Instance: ThoracicDrainageCompleted
InstanceOf: thoracic-drainage
Usage: #example
Title: "Thoracic Drainage Completed"
Description: "Example of a thoracic drainage that was completed"
* status = #completed
* subject = Reference(ExamplePatient)
* performedDateTime = "2021-09-14T13:06:00+02:00"

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
