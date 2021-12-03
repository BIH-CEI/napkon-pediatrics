// Author: Gregor Lichtner
// Berlin Institute of Health | Charité
ValueSet: Covid19ComplicationsICD10GM
Id: covid19-complications-icd10-gm
Title: "Covid19 complications ICD10 GM"
Description: "Complications due to COVID19"
* insert napkon-metadata(2020-10-05, #active, 1.0.0)

// Chronische Fatigue
* $icd10-gm#G93.3 "Chronisches Müdigkeitssyndrom [Chronic fatigue syndrome]"

// Bronchitis/Bronchiolitis
* codes from system $icd10-gm where concept is-a #J20 "Akute Bronchitis" and child exists false
* codes from system $icd10-gm where concept is-a #J21 "Akute Bronchiolitis" and child exists false

 // Aneurysma anderer Arterien
* $icd10-gm#I77.0 "Arteriovenöse Fistel, erworben"
* $icd10-gm#Q27.3 "Arteriovenöse Fehlbildung der peripheren Gefäße"
* $icd10-gm#I25.4 "Koronararterienaneurysma"
* $icd10-gm#I28.1 "Aneurysma der A. pulmonalis"
* codes from system $icd10-gm where concept is-a #I71 "Aortenaneurysma und -dissektion" and child exists false
* codes from system $icd10-gm where concept is-a #I72 "Sonstiges Aneurysma und sonstige Dissektion" and child exists false

// Reanimationspflichtigkeit - nicht vorhanden

// signifikante Leberfunktionsstörung
* codes from system $icd10-gm where concept is-a #K72 "Leberversagen, anderenorts nicht klassifiziert" and child exists false
* codes from system $icd10-gm where concept is-a #K75 "Sonstige entzündliche Leberkrankheiten" and child exists false
* $icd10-gm#K77.0 "Leberkrankheiten bei anderenorts klassifizierten infektiösen und parasitären Krankheiten"
* codes from system $icd10-gm where concept is-a #K76 "Sonstige Krankheiten der Leber" and child exists false

// Krampfanfälle
* codes from system $icd10-gm where concept is-a #R56 "Krämpfe, anderenorts nicht klassifiziert" and child exists false

// Synkope
* codes from system $icd10-gm where concept is-a #R55 "Synkope und Kollaps" and child exists false

// Anämie
* $icd10-gm#D64.9 "Anämie, nicht näher bezeichnet"

// Psychische Störung aufgrund einer körperlichen Krankheit
* codes from system $icd10-gm where concept is-a #F06 "Andere psychische Störungen aufgrund einer Schädigung oder Funktionsstörung des Gehirns oder einer körperlichen Krankheit" and child exists false

 // Long COVID-19
* $icd10-gm#U09.9 "Post-COVID-19-Zustand"

// Colitis
* codes from system $icd10-gm where concept is-a #A09 "Sonstige und nicht näher bezeichnete Gastroenteritis und Kolitis infektiösen und nicht näher bezeichneten Ursprungs" and child exists false

 // Ileitis
* $icd10-gm#K50.0 "Crohn-Krankheit des Dünndarmes"
* $icd10-gm#K52.9 "Nichtinfektiöse Gastroenteritis und Kolitis, nicht näher bezeichnet"

 // Peritonitis
* codes from system $icd10-gm where concept is-a #K65 "Peritonitis" and child exists false

 // Aszites
* codes from system $icd10-gm where concept is-a #R18 "Aszites" and child exists false
