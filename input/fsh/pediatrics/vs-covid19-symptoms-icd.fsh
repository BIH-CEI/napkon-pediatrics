// Author: Larissa Röhrig
// Berlin Institute of Health | Charité
ValueSet: Covid19SymptomsICD10GM
Id: covid-19-symptoms-icd-10-gm
Title: "Covid19 symptoms"
Description: "Symptoms due to COVID19"

* insert napkon-metadata(2020-11-11, #draft, 0.1.0)

// Halschmerzen
* $icd10-gm#R07.0 "Halsschmerzen"

// Schluckbeschwerden -
* $icd10-gm#R19.88 "Sonstige näher bezeichnete Symptome, die das Verdauungssystem und das Abdomen betreffen"

// Myoklonien -
* $icd10-gm#G25.3 "Myoklonus"

// Delir - ok
* codes from system $icd10-gm where concept is-a #IF05 "Delir, nicht durch Alkohol oder andere psychotrope Substanzen bedingt" and child exists false

// Exanthem -
* codes from system $icd10-gm where concept is-a #IR21 "Hautausschlag und sonstige unspezifische Hauteruptionen" and child exists false

// Palmarerythem -
* $icd10-gm#L53.8 "Sonstige näher bezeichnete erythematöse Krankheiten"

// Erdbeerzunge -
* $icd10-gm#K14.8 "Sonstige Krankheiten der Zunge"

// Hepatomegalie -
// Splenomegalie -
* codes from system $icd10-gm where concept is-a #IR16 "Hepatomegalie und Splenomegalie, anderenorts nicht klassifiziert" and child exists false
