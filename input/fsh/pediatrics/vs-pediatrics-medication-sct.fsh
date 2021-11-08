// Author: Sally
// Berlin Institute of Health | Charité
ValueSet: MedicationPediatricsSCT
Id: medication-pediatrics-sct
Title: "Medication Pediatrics SNOMED CT"
Description: "Medication used in the case of a of Covid-19 infection for a pediatric patient"
* insert napkon-metadata(2021-09-23, #draft, 0.1.0)

* $sct#387458008 "Aspirin (substance)" // ASS - ok
* $sct#112133008 "Immunoglobulin (substance)" // Immunoglobuline - ok
* $sct#444648007 "Tocilizumab (substance)" // Tocilizumab - ok
* $sct#385549000 "Anakinra (substance)" // Anakinra - ok
* codes from system $sct where concept is-a #373213009 "Inotropic agent (substance)" // Intropika - ok
* codes from system $sct where concept is-a #870406003 "Vasopressor (substance)" // /Vasopressoren - ok
* codes from system $sct where concept is-a #419241000 "Substance with antibacterial mechanism of action (substance)" // systemische Antibiotika
* codes from system $sct where concept is-a #372681003 "Hemostatic agent (substance)" // Hämostaseologische Therapien
* codes from system $sct where concept is-a #410652009 "Blood product (product)" // Transfusion
