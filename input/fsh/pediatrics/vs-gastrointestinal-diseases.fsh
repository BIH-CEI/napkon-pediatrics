// Author: Thomas Haese
// Charité - Universitätsmedizin Berlin
ValueSet: GastrointestinalDiseases
Id: gastrointestinal-diseases-sct
Title: "Value Set of Gastrointestinal Diseases"
Description: "Gastrointestinal diseases in the context of pediatrics and COVID-19"
* insert napkon-metadata(2021-09-13, #active, 1.0.0)
* $sct#236069009 "Chronic constipation (disorder)" // Chronische Obstipation
* $sct#24526004 "Inflammatory bowel disease" // Chronisch entzündliche Darmerkrankung
* $sct#396331005 "Celiac disease (disorder)" // Zoeliakie
* $sct#782555009 "Allergy to cow's milk protein (finding)" // Kuhmilchproteinallergie
* $sct#118926004 "Disorder of bile duct (disorder)" // Gallengangserkrankung
* include codes from system $sct where concept is-a #119292006 "Disorder of gastrointestinal tract (disorder)" // Andere
