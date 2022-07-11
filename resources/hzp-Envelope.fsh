Profile: HzpEnvelope
Parent: ServiceRequest
Id: hzp-Envelope
Title: "hzp Envelope"
* ^version = "0.1.0"
* ^status = #draft
* ^publisher = "Nictiz"
* ^contact.name = "Nictiz"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nictiz.nl"
* ^contact.telecom.use = #work
* supportingInfo ^slicing.discriminator.type = #profile
* supportingInfo ^slicing.discriminator.path = "resolve()"
* supportingInfo ^slicing.rules = #open
* supportingInfo contains facilitiesNeededForConsultation 0..*

Mapping: hzp-Envelope
Id: hzp-Envelope
Title: "Huisartsoverdrachten - Envelop"
Source: HzpEnvelope
Target: "https://decor.nictiz.nl/art-decor/decor-datasets--hg"
* intent -> "hg-dataelement-1863" "VervolgActieOpTypeBericht"
* category -> "hg-dataelement-1685" "TypeBericht"
* priority -> "hg-dataelement-1702" "Urgentie"
* orderDetail -> "hg-dataelement-1696" "Zorgpad"
* subject -> "hg-dataelement-1679" "Patiëntgegevens"
* authoredOn -> "hg-dataelement-1684" "DatumTijdVerzenden"
* requester -> "hg-dataelement-1678" "Verzender"
* performer -> "hg-dataelement-1680" "Ontvanger"
* supportingInfo[facilitiesNeededForConsultation] -> "hg-dataelement-1708" "VoorzieningenNodigBijConsult"
* note -> "hg-dataelement-1864" "ToelichtingAfbrekenBericht"