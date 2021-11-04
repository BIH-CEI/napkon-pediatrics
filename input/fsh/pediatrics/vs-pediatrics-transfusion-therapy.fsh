// Author: Sally
// Berlin Institute of Health | Charité

ValueSet: BloodTransfusionTherapy
Id: blood-transfusion-therapy-codes
Title: "Blood Transfusion Therapy"
Description: "ValueSet for Blood Transfusion Therapy"
* insert napkon-metadata(2021-09-23, #draft, 0.1.0)

// Alle Codes unter SCT zulassen?
* codes from system $sct where concept is-a #116859006 "Transfusion of blood product (procedure)"

// Gemäß Anforderung

* $sct#116863004 "Transfusion of red blood cells (procedure)"
* $sct#12719002  "Platelet transfusion (procedure)"
* $sct#13569004  "Transfusion of plasma (procedure)"
