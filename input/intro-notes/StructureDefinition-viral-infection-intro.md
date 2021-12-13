
{% assign id = {{include.id}} %}
{% assign resource = site.data.structuredefinitions.[id] %}

### Guidance

| Parameter Case Report Form | FHIR Resource Attribute |
| -------------------------- | ----------------------- |
| Viral infections in the context of co-infections | `Condition.code` |
{:.grid}

| Response Option | Code |
| ------ | ---- |
| RSV-Infektion | `Respiratory syncytial virus infection (disorder)` |
| Influenza | `Influenza (disorder)` |
| Humanes Metapneumovirus | `Human metapneumovirus infection (disorder)` |
| Rhinoviren | `Disease caused by Rhinovirus (disorder)` |
| Adenoviren | `Disease caused by Adenovirus (disorder)` |
| Bocaviren | `Disease caused by Human bocavirus (disorder)` |
| Parainfluenzaviren | `Parainfluenza (disorder)` |
| Andere Coronaviren | `Disease caused by Coronaviridae (disorder)` |
| Andere | `...` |
{:.grid}
TODO: Andere angeben. Den Code trotzdem? oder leer lassen?


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
