
{% assign id = {{include.id}} %}
{% assign resource = site.data.structuredefinitions.[id] %}

### Guidance

| Parameter Case Report Form | FHIR Resource Attribute |
| -------------------------- | ----------------------- |
| SARS-CoV-2 RT PCR in excreta | `Observation.valueCodeableConcept` |
{:.grid}

| Response Option | Code |
| ------ | ---- |
| Detected | `Detected (qualifier value)` |
| Not detected | `Not detected (qualifier value)` |
| Inconclusive | `Inconclusive (qualifier value)` |
{:.grid}

This profile is akin to the [GECCO SARS-CoV-2-RT-PCR profile](https://simplifier.net/guide/GermanCoronaConsensusDataSet-ImplementationGuide/SARS-CoV-2-RT-PCR), but for excreta specimens, not respiratory specimens.
The exact type of specimen is specified using the `Observation.specimen` attribute with a reference to the [Specimen Excreta profile][Specimen Excreta].


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
