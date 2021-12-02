// Author: Larissa Röhrig
// Charité - Universitätsmedizin Berlin
ValueSet: Covid19SymptomsSCT
Id: covid-19-symptoms
Title: "Covid19 symptoms"
Description: "Symptoms due to COVID19"
* insert napkon-metadata(2020-11-11, #draft, 0.1.0)
* $sct#162397003 "Pain in throat (finding)" // Halsschmerzen
* $sct#30233002 "Swallowing painful (finding)" // Schluckbeschwerden
* $sct#17450006 "Myoclonus (finding)" // Myoklonien
* $sct#2776000 "Delirium (disorder)" // Delir
* $sct#271807003 "Eruption of skin (disorder)" // Exanthem
* $sct#56940005 "Palmar erythema (disorder)" // Palmarerythem
* $sct#5920007 "Raspberry tongue (disorder)" // Erdbeerzunge
* $sct#80515008 "Large liver (disorder)" // Hepatomegalie
* $sct#16294009 "Splenomegaly (disorder)" // Splenomegalie
* include codes from system $sct where concept is-a #404684003 "Clinical finding (finding)" // Andere
