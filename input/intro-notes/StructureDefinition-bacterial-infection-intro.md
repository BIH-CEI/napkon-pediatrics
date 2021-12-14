
{% assign id = {{include.id}} %}
{% assign resource = site.data.structuredefinitions.[id] %}

### Guidance

| Parameter Case Report Form | FHIR Resource Attribute |
| -------------------------- | ----------------------- |
| Is there a bacterial infection? If yes, with which pathogen? | `Condition.code` |
{:.grid}

| Response Option | Condition.Code |
| ------ | ---- |
| Bordetella pertussis | `Pertussis (disorder)` |
| Mykoplasmen | `Mycoplasma infection (disorder)`|
| Chlamydien | `Chlamydial infection (disorder)`|
| Legionellen | `Legionella infection (disorder)`|
| Bakterielle Meningitis | `Bacterial meningitis (disorder)`|
| Bakterielle Arthritis | `Bacterial arthritis (disorder)`|
| Bakterielle Osteomyelitis | `Bacterial osteomyelitis (disorder)`|
| Pyelonephritis | `Pyelonephritis (disorder)`|
| Bakterielle Endokarditis | `Bacterial endocarditis (disorder)`|
| Gruppe A-Streptokokken | `Invasive Group A beta-hemolytic streptococcal disease (disorder)`|
| Blutstrominfektion | `Infection of bloodstream (disorder)`|
| Staph. Aureus | `Infection caused by Staphylococcus aureus (disorder)`|
| Strep. Pneumoniae | `Invasive Streptococcus pneumoniae disease (disorder)`|
| Strep. Viridans | `Infection caused by Streptococcus viridans group (disorder)`|
| Strep. Pyogenes | `Streptococcus pyogenes infection (disorder)`|
| Strep. agalactiae| `Streptococcus agalactiae infection (disorder)`|
| Enterokokken | `Infection caused by enterococcus (disorder)`|
| Haemophilus influenzae | `Haemophilus influenzae infection (disorder)`|
| E. coli | `Infection caused by Escherichia coli (disorder)`|
| Klebsiella spp. | `Infection caused by Klebsiella (disorder)`|
| Pseudomonas aeruginosa | `Infection caused by Pseudomonas aeruginosa (disorder)`|
| Neisseria meningitidis | `Meningococcal infectious disease (disorder)`|
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
