// Author: Gregor Lichtner
// Charité - Universitätsmedizin Berlin
RuleSet: napkon-metadata(date, status, version)
* ^status = {status}
* ^version = "{version}"
* ^publisher = "Charité - Universitätsmedizin Berlin"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.bihealth.org/en/research/core-facilities/interoperability/"
* ^date = "{date}"

RuleSet: napkon-metadata-instance(date, status, version)
* status = {status}
* version = "{version}"
* publisher = "Charité - Universitätsmedizin Berlin"
* contact.telecom.system = #url
* contact.telecom.value = "https://www.bihealth.org/en/research/core-facilities/interoperability/"
* date = "{date}"
