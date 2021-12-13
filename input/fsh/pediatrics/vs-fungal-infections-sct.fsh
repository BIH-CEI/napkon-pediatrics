// Author: Gregor Lichtner
// Charité - Universitätsmedizin Berlin
ValueSet: FungalInfectionsSCT
Id: fungal-infections-sct
Title: "Fungal Infections SNOMED CT"
Description: "Value set of fungal infections"
* insert napkon-metadata(2020-10-05, #active, 1.0.0)
* include codes from system $sct where concept is-a #83062006 "Infection caused by Candida albicans (disorder)"
* include codes from system $sct where concept is-a #65553006 "Aspergillosis (disorder)"
* include codes from system $sct where concept is-a #3218000 "Mycosis (disorder)"
