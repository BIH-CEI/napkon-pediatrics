// value set has to cover all the different viral infectious diseases
ValueSet: ViralInfectiousDiseases
Id: viral-infectious-diseases

* insert napkon-metadata(2021-05-28, #draft, 0.1.0)
//* ^url = "https://www.netzwerk-universitaetsmedizin.de/fhir/ValueSet/vs-viral-infections"

* $sct#55735004 "Respiratory syncytial virus infection (disorder)"
* $sct#6142004 "Influenza (disorder)"
* $sct#1087141000119106 "Human metapneumovirus infection (disorder)"
* $sct#41546002 "Disease caused by Rhinovirus (disorder)"
* $sct#25225006 "Disease caused by Adenovirus (disorder)"

// Q: wrong in AD/excel there the code for organism was used --> need to change
* $sct#1148698007 "Disease caused by Human bocavirus (disorder)"

// Q: wrong in AD/excel there the code for organism was used --> need to change
* $sct#27619001 "Disease caused by Coronaviridae (disorder)"

// Q: wrong in AD/excel there the code for organism was used --> need to change
* $sct#12188008 "Parainfluenza (disorder)"

// Q: do not know how to cover 'other viral diesease' -- would not use qualifier value

* $sct#261665006 "Unknown (qualifier value)"
