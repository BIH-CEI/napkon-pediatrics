// Author: Gregor Lichtner
// Berlin Institute of Health | Charité
ValueSet: MedicationPediatricsATCDE
Id: medication-pediatrics-atc-de
Title: "Medication Pediatrics ATC DE"
Description: "Medication used in the case of a of Covid-19 infection for a pediatric patient"
* insert napkon-metadata(2021-09-23, #draft, 0.1.0)

* $atcde#A01AD05 "Acetylsalicylsäure" // ASS - ok
* $atcde#L04AC07		"Tocilizumab" // Tocilizumab - ok
* $atcde#L04AC03		"Anakinra" // Anakinra - ok
* codes from system $atcde where concept is-a #J06B "IMMUNGLOBULINE" // Immunoglobuline - ok
* codes from system $atcde where concept is-a #C01C "KARDIOSTIMULANZIEN, EXKL. HERZGLYKOSIDE" // inotropkia, vasopressoren
* codes from system $atcde where concept is-a #J01 "ANTIBIOTIKA ZUR SYSTEMISCHEN ANWENDUNG " // systemische Antibiotika
* codes from system $atcde where concept is-a #B02B "VITAMIN K UND ANDERE HÄMOSTATIKA" // Hämostaseologische Therapien
* codes from system $atcde where concept is-a #B05 "BLUTERSATZMITTEL UND PERFUSIONSLÖSUNGEN" // Transfusion
