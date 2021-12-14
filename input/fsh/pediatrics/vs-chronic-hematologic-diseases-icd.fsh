// Author: Thomas Haese
// Charité - Universitätsmedizin Berlin
ValueSet: ChronicHematologicDiseasesICD
Id: chronic-hematologic-diseases-icd
Title: "Chronic hematologic diseases (ICD10-GM)"
Description: "Chronic hematologic diseases in the context of pediatrics and COVID-19"
* insert napkon-metadata(2021-08-04, #active, 1.0.0)
* include codes from system $icd10-gm where concept regex /^D5[5-9]\..*/ and child exists false // Hämolytische Anämien (D55-D59), Thalassämie D56, G6PD-Mangel-Anämie - D55, Sichelzellanämie - D57
* include codes from system $icd10-gm where concept regex /^D50\..*/ and child exists false // Eisenmangelanämie - D50.- Eisenmangelanämie
* include codes from system $icd10-gm where concept regex /^D70\..*/ and child exists false // chronische Neutropenie - D70
* include codes from system $icd10-gm where concept regex /^D46\..*/ and child exists false // myelodysplastisches Syndrom - D46.- Myelodysplastische Syndrome
* include codes from system $icd10-gm where concept regex /^D6[5-8]\..*/ and child exists false //Gerinnungsstörung - D68.- Sonstige Koagulopathien, D67 Hereditärer Faktor-IX-Mangel, D66 Hereditärer Faktor-VIII-Mangel, D65.- Disseminierte intravasale Gerinnung [Defibrinationssyndrom]
* include codes from system $icd10-gm where concept regex /^D[5-7].*/ and child exists false // Andere
  /*
  The above regex captures the following ICD10-GM codes (for "other chronic hematologic diseases"):
    * D50-D53 Alimentäre Anämien
    * D55-D59 Hämolytische Anämien
    * D60-D64 Aplastische und sonstige Anämien
    * D65-D69 Koagulopathien, Purpura und sonstige hämorrhagische Diathesen
    * D70-D77 Sonstige Krankheiten des Blutes und der blutbildenden Organe
  */
