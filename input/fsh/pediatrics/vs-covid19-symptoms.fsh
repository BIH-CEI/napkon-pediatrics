// Author: Larissa Röhrig
// Berlin Institute of Health | Charité
ValueSet: Covid19SymptomsSCT
Id: covid-19-symptoms
Title: "Covid19 symptoms"
Description: "Symptoms due to COVID19"

* insert napkon-metadata(2020-11-11, #draft, 0.1.0)

* $sct#162397003 "Pain in throat (finding)" // Halsschmerzen - ok
* $sct#30233002 "Swallowing painful (finding)" // Schluckbeschwerden - ok
* $sct#17450006 "Myoclonus (finding)" // Myoklonien - ok
* $sct#2776000 "Delirium (disorder)" // Delir - ok
* $sct#271807003 "Eruption of skin (disorder)" // Exanthem - ok
* $sct#56940005 "Palmar erythema (disorder)" // Palmarerythem - ok
* $sct#5920007 "Raspberry tongue (disorder)" // Erdbeerzunge - ok
* $sct#80515008 "Large liver (disorder)" // Hepatomegalie - ok
* $sct#16294009 "Splenomegaly (disorder)" // Splenomegalie - ok

* include codes from system $sct where concept is-a #404684003 "Clinical finding (finding)" // Andere
