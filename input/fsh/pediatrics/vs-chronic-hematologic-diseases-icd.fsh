// Author: Thomas Haese
// Charité – Universitätsmedizin Berlin

ValueSet: ChronicHematoloogicDiseasesICD
Id: chronic-hematoloogic-diseases-icd
Title: "Value Set of Chronic Hematoloogic Diseases ICD"
Description: "Chronic hematoloogic diseases in the context of pediatrics and Covid-19"

* insert napkon-metadata(2021-08-04, #draft, 0.1.0)

* include codes from system $icd10-gm where concept regex /^D5[5-9]\..*/ and child exists false // Hämolytische Anämien (D55-D59),  Thalassämie D56, G6PD-Mangel-Anämie - D55, Sichelzellanämie - D57
* include codes from system $icd10-gm where concept regex /^D50\..*/ and child exists false // Eisenmangelanämie - D50.- Eisenmangelanämie
* include codes from system $icd10-gm where concept regex /^D70\..*/ and child exists false // chronische Neutropenie - D70
* include codes from system $icd10-gm where concept regex /^D46\..*/ and child exists false // myelodysplastisches Syndrom - D46.- Myelodysplastische Syndrome
* include codes from system $icd10-gm where concept regex /^D6[5-8]\..*/ and child exists false //Gerinnungsstörung - D68.- Sonstige Koagulopathien, D67 Hereditärer Faktor-IX-Mangel, D66 Hereditärer Faktor-VIII-Mangel, D65.- Disseminierte intravasale Gerinnung [Defibrinationssyndrom]

// Andere
* include codes from system $icd10-gm where concept regex /^D[5-7].*/ and child exists false
// Krankheiten des Blutes und der blutbildenden Organe sowie bestimmte Störungen mit Beteiligung des Immunsystems (D50-D90)
// D50-D53 Alimentäre Anämien
// D55-D59 Hämolytische Anämien
// D60-D64 Aplastische und sonstige Anämien
// D65-D69 Koagulopathien, Purpura und sonstige hämorrhagische Diathesen
// D70-D77 Sonstige Krankheiten des Blutes und der blutbildenden Organe
