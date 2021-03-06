
{% assign id = {{include.id}} %}
{% assign resource = site.data.structuredefinitions.[id] %}

### Guidance

| Parameter Case Report Form | FHIR Resource Attribute |
| -------------------------- | ----------------------- |
| Type of excreta | `Specimen.type` |
{:.grid}


The following codes are from the [v2-0487 Code System](http://terminology.hl7.org/CodeSystem/v2-0487):

| Response Option | Code |
| ------ | ---- |
| Stuhl | `#STL "Stool = Fecal"` |
| Urin | `#UR "Urine"` |
{:.grid}

This Specimen profile is used in conjunction with the [SARS-CoV-2 RT PCR Specimen profile][SARS-CoV-2 RT PCR Specimen] to specify the type of excreta that was collected from a patient and tested for SARS-CoV-2.

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
