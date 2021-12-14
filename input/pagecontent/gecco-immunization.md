### Guidance


| Parameter Case Report Form | FHIR Resource Attribute |
| -------------------------- | ----------------------- |
| If the patient was vaccinated against COVID-19, what type of vaccine was used? | `Immunization.vaccineCode` |
{:.grid}

This information is captured using the [GECCO History of Immunization profile](https://simplifier.net/forschungsnetzcovid-19/immunization). For more information see the [Implementation Guide](https://simplifier.net/guide/GermanCoronaConsensusDataSet-ImplementationGuide/Immunizationstatus).

In contrast to what is specified in the [Implementation Guide of the GECCO Immunization profile](https://simplifier.net/guide/GermanCoronaConsensusDataSet-ImplementationGuide/Immunizationstatus), the AstraZeneca and Johnson & Johnson vaccines are **NOT** coded using `1119305005 |Vaccine product containing only Severe acute respiratory syndrome coronavirus 2 antigen (medicinal product)|`, but instead `29061000087103 | Vaccine product containing only recombinant non-replicating viral vector encoding Severe acute respiratory syndrome coronavirus 2 spike protein (medicinal product) |` See below for the full table of vaccine codes.
{:.stu-note}

| Vaccine | [SNOMED CT Code][SNOMEDCT] |
| ------- | ----------------------- |
| Corminatry® BioNTech/Pfizer | `1119349007 |Vaccine product containing only Severe acute respiratory syndrome coronavirus 2 messenger ribonucleic acid (medicinal product)|` |
| COVID-19 Vaccine® Moderna | `1119349007 |Vaccine product containing only Severe acute respiratory syndrome coronavirus 2 messenger ribonucleic acid (medicinal product)|` |
| Vaxzevria® AstraZeneca | `29061000087103 | Vaccine product containing only recombinant non-replicating viral vector encoding Severe acute respiratory syndrome coronavirus 2 spike protein (medicinal product) |` |
| Janssen® Johnson & Johnson | `29061000087103 | Vaccine product containing only recombinant non-replicating viral vector encoding Severe acute respiratory syndrome coronavirus 2 spike protein (medicinal product) |` |
{:grid}

SARS-CoV-2 RT PCR in respiratory speciment are supplied using the [GECCO SARS-CoV-2-RT-PCR profile](https://simplifier.net/guide/GermanCoronaConsensusDataSet-ImplementationGuide/SARS-CoV-2-RT-PCR), which is derived from the [MII Laborbefund profile](https://simplifier.net/guide/LaborbefundinderMedizininformatik-Initiative/Observation). Please see the [GECCO SARS-CoV-2-RT-PCR Implementation Guide](https://simplifier.net/guide/GermanCoronaConsensusDataSet-ImplementationGuide/SARS-CoV-2-RT-PCR) for more information.


{% include link-list.md %}

https://simplifier.net/forschungsnetzcovid-19/immunization
https://simplifier.net/guide/GermanCoronaConsensusDataSet-ImplementationGuide/Immunizationstatus
