// Author: Thomas Haese
// Charité - Universitätsmedizin Berlin
ValueSet: GastrointestinalDiseasesICD
Id: gastrointestinal-diseases-icd
Title: "Value Set of Gastrointestinal Diseases ICD"
Description: "Gastrointestinal diseases in the context of pediatrics and Covid-19"
* insert napkon-metadata(2021-09-13, #draft, 0.1.0)
* include codes from system $icd10-gm where concept regex /^K59\.0*/ and child exists false // K59.0- Obstipation
* include codes from system $icd10-gm where concept regex /^K5[0-2].*/ and child exists false  // Nichtinfektiöse Enteritis und Kolitis (K50-K52)
* $icd10-gm#K90.0 "Zöliakie" // Zoeliakie
* include codes from system $icd10-gm where concept regex /^K83.*/ and child exists false  // K83.- Sonstige Krankheiten der Gallenwege

// Kuhmilchproteinallergie
* $icd10-gm#T78.1 "Sonstige Nahrungsmittelunverträglichkeit, anderenorts nicht klassifiziert"
* $icd10-gm#T78.0 "Anaphylaktischer Schock durch Nahrungsmittelunverträglichkeit"
* $icd10-gm#L27.2 "Dermatitis durch aufgenommene Nahrungsmittel"
* $icd10-gm#L23.6 "Allergische Kontaktdermatitis durch Nahrungsmittel bei Hautkontakt"
* $icd10-gm#Z91.0 "Allergie, ausgenommen Allergie gegenüber Arzneimitteln, Drogen oder biologisch aktiven Substanzen, in der Eigenanamnese"

* include codes from system $icd10-gm where concept regex /^K.*/ and child exists false // Andere
