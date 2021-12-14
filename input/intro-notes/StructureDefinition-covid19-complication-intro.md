
{% assign id = {{include.id}} %}
{% assign resource = site.data.structuredefinitions.[id] %}

### Guidance

| Parameter Case Report Form | FHIR Resource Attribute |
| -------------------------- | ----------------------- |
| Complication due to COVID-19 | `Condition.code` |
{:.grid}

| Response Option | Code |
| ------ | ---- |
| Chronische Fatigue | `Chronic fatigue syndrome (disorder)` |
| Bronchitis | `Bronchitis (disorder)` |
| Bronchiolitis | `Bronchiolitis (disorder)` |
| Aneurysma anderer Arterien | `Arterial aneurysm (disorder)` |
| Reanimationspflichtigkeit | `Procedure needed Where Associated procedure = Resuscitation` |
| Leberfunktionsstörung | `Disorder of liver (disorder)` |
| Krampfanfälle | `Seizure disorder (disorder)` |
| Synkope | `Syncope (finding)` |
| Anämie | `Anemia (disorder)` |
| Psychische Störung aufgrund einer körperlichen Krankheit | `Organic mental disorder (disorder)` |
| Long COVID-19 | `Post-acute COVID-19 (disorder)` |
| Colitis | `Colitis (disorder)` |
| Ileitis | `Ileitis (disorder)` |
| Peritonitis | `Peritonitis (disorder)` |
| Aszites | `Ascites (disorder)` |
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
