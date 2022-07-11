Profile: HzpTask
Parent: Task
Id: hzp-Task
Title: "hzp Task"
* ^version = "0.1.0"
* ^status = #draft
* ^publisher = "Nictiz"
* ^contact.name = "Nictiz"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nictiz.nl"
* ^contact.telecom.use = #work
* input ^slicing.discriminator.type = #value
* input ^slicing.discriminator.path = type.coding.code
* input ^slicing.rules = #open
* input contains envelope 1..1

Mapping: hzp-Task
Id: hzp-Task
Title: "Huisartsoverdrachten - Task"
Source: HzpTask
Target: "https://decor.nictiz.nl/art-decor/decor-datasets--hg"
* requester -> "hg-dataelement-1678" "Verzender"
* for -> "hg-dataelement-1679" "Patiëntgegevens"
* owner -> "hg-dataelement-1680" "Ontvanger"
* input[envelope] -> "hg-dataelement-1673" "Envelop"