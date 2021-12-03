// Author: Sally Brose
// Charité - Universitätsmedizin Berlin
ValueSet: MedicationPediatricsSCT
Id: medication-pediatrics-sct
Title: "Medication Pediatrics SNOMED CT"
Description: "Medication used in the case of a of Covid-19 infection for a pediatric patient"
* insert napkon-metadata(2021-09-23, #active, 1.0.0)
* codes from system $sct where concept is-a #7947003 "Product containing aspirin (medicinal product)" // ASS
* codes from system $sct where concept is-a #333711001 "Product containing human immunoglobulin (medicinal product)" // Immunoglobuline
* codes from system $sct where concept is-a #444649004 "Product containing tocilizumab (medicinal product)" // Tocilizumab
* codes from system $sct where concept is-a #395279009 "Product containing anakinra (medicinal product)"
* codes from system $sct where concept is-a #373213009 "Inotropic agent (substance)" // Intropika - not using product code because the product code has no children, while this code has the different inotropic substances as children
* codes from system $sct where concept is-a #870406003 "Vasopressor (substance)" // /Vasopressoren- not using product code because the product code has no children, while this code has the different vasopressor substances as children
* codes from system $sct where concept is-a #346325008 "Medicinal product acting as antibacterial agent (product)"  // systemische Antibiotika
* codes from system $sct where concept is-a #26370007 "Medicinal product acting as hemostatic (product)" // Hämostaseologische Therapien
* codes from system $sct where concept is-a #410652009 "Blood product (product)" // Transfusion
* codes from system $sct where concept is-a #372580007 "Bronchodilator (substance)" // Bronchodilators - not using product code because the product code has no children, while this code has the different inotropic substances as children
* codes from system $sct where concept is-a #409378005 "Product containing nitric oxide (medicinal product)" // N2O
