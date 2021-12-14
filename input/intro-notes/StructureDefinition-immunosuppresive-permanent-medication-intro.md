
{% assign id = {{include.id}} %}
{% assign resource = site.data.structuredefinitions.[id] %}

### Guidance

| Parameter Case Report Form | FHIR Resource Attribute |
| -------------------------- | ----------------------- |
| Was the patient receiving immunosuppressive therapy prior to admission? If yes, which? | `MedicationStatement.medicationCodeableConcept` |
{:.grid}


This profile is used in conjunction with the [Preadmission Medications List profile][Preadmission Medications]: Each instance of this profile shall be added to the [Preadmission Medications List][Preadmission Medications] to indicate that the medications were administered prior to admission.


| Response Option | [SNOMED CT][SNOMEDCT] Code | [NAPKON Pediatrics Code](CodeSystem-napkon-pediatrics-module.html) |
| ------ | ---- |
| Systemische Steroide | `Product containing steroid (product)` | - |
| Systemische Calcineurin-Inhibitoren | `Product containing calcineurin inhibitor (product)` | - |
| mTOR-Inhibitoren | - | `#P10 "Mammalian target of rapamycin (mTOR)-Kinase inhibitor"` |
| Sphingosin-Analoga | - | `#P1 "Sphingosine analogue"` |
| Antimetabolite | `Product containing antimetabolite (product)` | - |
| Alkylantien | `Product containing alkylating agent (product)` | - |
| TNF-Inhibitoren | `Product containing tumor necrosis factor alpha inhibitor (product)` | - |
| IL-1-Inhibitoren | `Product containing interleukin 1 receptor antagonist (product)` | - |
| IL-2-Inhibitoren | - | `#P2 "Interleukin 2 receptor antagonist"` |
| IL-6-Inhibitoren - no product code found | `Substance with interleukin 6 receptor antagonist mechanism of action (substance)` | - |
| IL-17-Inhibitoren | - | `#P3 "Interleukin 17 receptor antagonist"` |
| IL-23-Inhibitoren | `Product containing interleukin 23 receptor antagonist (product)` | - |
| CTLA-4-Antagonisten - no product code found | `Substance with cytotoxic T-lymphocyte-associated protein 4 inhibitor mechanism of action (substance)` | - |
| CD20-Antikörper | - | `#P4 "Anti-CD20 antibody"` |
| CD52-Antikörper | - | `#P5 "Anti-CD52 antibody"` |
| CD3-Antikörper | - | `#P6 "Anti-CD3 antibody"` |
| CD3/CD19-Antikörper | - | `#P7 "Anti-CD3/CD19 antibody"` |
| Anti-T-Lymphozytenglobulin | `Product containing equine antithymocyte immunoglobulin (medicinal product)` | - |
| Integrin-Inhibitoren | - | `#P8 "Integrin inhibitor"` |
| BAFF-Inhibitoren | - | `#P9 "B cell activating factor inhibitor"` |
| JAK-Inhibitoren | `Product containing Janus kinase inhibitor (product)` | - |
| Tyrosinkinase-Inhibitoren | `Product containing protein-tyrosine kinase inhibitor (product)` | - |
| IgE-Antikörper - no product code found | `Immunoglobulin E (substance)` | - |
| Interferone | `Product containing interferon (product)` | - |
| Andere | `Medicinal product acting as immunosuppressant (product)` | - |
{:.grid}


{% capture resource_inheritance %}
This profile of a FHIR {{resource.type}} is derived from the [{{resource.base | split: '/' | last}}]({{resource.base}})
{% if resource.base contains 'https://www.medizininformatik-initiative.de/fhir' %}
 profile of the [Medical Informatics Initiative (MII)][MII].
{% elsif resource.base contains 'https://www.netzwerk-universitaetsmedizin.de/fhir' %}
 profile of the [German Corona Consensus Dataset (GECCO)][GECCO].
{% else %}
 FHIR resource.
{% endif %}
{% endcapture %}

{{ resource_inheritance | strip_newlines }}

{% if resource.base == 'https://www.netzwerk-universitaetsmedizin.de/fhir/StructureDefinition/gecco-base-condition' %}
{% include condition-gecco-answer-options.md %}
{% endif %}

{% include link-list.md %}
