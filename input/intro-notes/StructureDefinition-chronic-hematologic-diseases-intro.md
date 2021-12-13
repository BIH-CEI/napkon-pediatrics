
{% assign id = {{include.id}} %}
{% assign resource = site.data.structuredefinitions.[id] %}

### Guidance

| Parameter Case Report Form | FHIR Resource Attribute |
| -------------------------- | ----------------------- |
| Does the patient suffer from a chronic hematological disease? Which chronic hematological disease does the patient suffer from? | `Condition.code` |
{:.grid}

| Response Option | Condition.Code |
| ------ | ---- |
| Hämolytische Anämie | `Hemolytic anemia (disorder)` |
| Thalassämie | `Thalassemia (disorder)` |
| Sichelzellanämie | `Sickle cell-hemoglobin SS disease (disorder)` |
| G6PD-Mangel-Anämie| `Glucose-6-phosphate dehydrogenase deficiency anemia (disorder)` |
| Eisenmangelanämie | `Iron deficiency anemia (disorder)` |
| Chronische Neutropenie | `Neutropenic disorder where Clinical course = Chronic` |
| Myelodysplastisches Syndrom | `Myelodysplastic syndrome (disorder)` |
| Gerinnungsstörung | `Blood coagulation disorder (disorder)` |
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
