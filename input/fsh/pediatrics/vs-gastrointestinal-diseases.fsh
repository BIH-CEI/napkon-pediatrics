// Author: Thomas Haese
// Charité – Universitätsmedizin Berlin

ValueSet: GastrointestinalDiseases
Id: gastrointestinal-diseases-sct
Title: "Value Set of Gastrointestinal Diseases"
Description: "Gastrointestinal diseases in the context of pediatrics and Covid-19"

* insert napkon-metadata(2021-09-13, #draft, 0.1.0)

* $sct#236069009 "Chronic constipation (disorder)" // Chronische Obstipation - ok
* $sct#24526004:263502005=90734009 "Inflammatory bowel disease where Clinical course = Chronic" // Chronisch entzündliche Darmerkrankung - ok // TODO: YB, please check
* $sct#396331005 "Celiac disease (disorder)" // Zoeliakie - ok
* $sct#782555009 "Allergy to cow's milk protein (finding)" // Kuhmilchproteinallergie - ok
* $sct#118926004 "Disorder of bile duct (disorder)" // Gallengangserkrankung - ok

* include codes from system $sct where concept is-a #119292006 "Disorder of gastrointestinal tract (disorder)" // Andere - ok
