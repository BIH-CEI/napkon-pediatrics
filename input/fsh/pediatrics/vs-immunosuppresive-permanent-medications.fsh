// Author: Gregor Lichtner
// Berlin Institute of Health "Charité
ValueSet: ImmunosuppressivePermanentMedications
Id: immunosuppressive-permament-medications
Title: "Immunosuppressive Permanent Medications"
Description: "Immunosuppressive medications"

* insert napkon-metadata(2021-10-05, #draft, 0.1.0)

// Systemische Steroide
* codes from system $sct where concept is-a ##768759001 "Product containing steroid (product)"

// Systemische Calcineurin-Inhibitoren
* codes from system $sct where concept is-a ##416587008 "Product containing calcineurin inhibitor (product)"

// mTOR-Inhibitoren
* $nped#000010 "Mammalian target of rapamycin (mTOR)-Kinase inhibitor"

// Sphingosin-Analoga
* $nped#000001 "Sphingosine analogue"

// Antimetabolite
* codes from system $sct where concept is-a ##58760003 "Product containing antimetabolite (product)"

// Alkylantien
* codes from system $sct where concept is-a ##19768003 "Product containing alkylating agent (product)"

// TNF-Inhibitoren
* codes from system $sct where concept is-a ##416897008 "Product containing tumor necrosis factor alpha inhibitor (product)"

// IL-1-Inhibitoren
* codes from system $sct where concept is-a ##430817009 "Product containing interleukin 1 receptor antagonist (product)"

 // IL-2-Inhibitoren
* $nped#000002 "Interleukin 2 receptor antagonist"

// IL-6-Inhibitoren
* codes from system $sct where concept is-a ##784015001 "Substance with interleukin 6 receptor antagonist mechanism of action (substance)" // no product code found

// IL-17-Inhibitoren
* $nped#000003 "Interleukin 17 receptor antagonist"

// IL-23-Inhibitoren
* codes from system $sct where concept is-a ##771678003 "Product containing interleukin 23 receptor antagonist (product)"

// CTLA-4-Antagonisten
* codes from system $sct where concept is-a ##870401008 "Substance with cytotoxic T-lymphocyte-associated protein 4 inhibitor mechanism of action (substance)" // no product code found

// CD20-Antikörper
* $nped#000004 "Anti-CD20 antibody"

// CD52-Antikörper
* $nped#000005 "Anti-CD52 antibody"

// CD3-Antikörper
* $nped#000006 "Anti-CD3 antibody"

// CD3/CD19-Antikörper
* $nped#000007 "Anti-CD3/CD19 antibody"

// Anti-T-Lymphozytenglobulin
* codes from system $sct where concept is-a ##786198001 "Product containing equine antithymocyte immunoglobulin (medicinal product)"

// Integrin-Inhibitoren
* $nped#000008 "Integrin inhibitor"

// BAFF-Inhibitoren
* $nped#000009 "B cell activating factor inhibitor"

// JAK-Inhibitoren
* codes from system $sct where concept is-a ##704315005 "Product containing Janus kinase inhibitor (product)"

// Tyrosinkinase-Inhibitoren
* codes from system $sct where concept is-a ##129557000 "Product containing protein-tyrosine kinase inhibitor (product)"

// IgE-Antikörper
* codes from system $sct where concept is-a ##48583005 "Immunoglobulin E (substance)" // no product code found

// Interferone
* codes from system $sct where concept is-a ##768865007 "Product containing interferon (product)"

* codes from system $sct where concept is-a #69431002 "Medicinal product acting as immunosuppressant (product)"
