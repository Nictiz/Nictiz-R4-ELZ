Alias: $LNC = http://loinc.org

Profile: HzpCore
Parent: Observation
Id: hzp-Core
Title: "hzp Core"
* ^version = "0.1.0"
* ^status = #draft
* ^publisher = "Nictiz"
* ^contact.name = "Nictiz"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nictiz.nl"
* ^contact.telecom.use = #work
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "coding.code"
* component ^slicing.rules = #open
* component contains
    reasonContextReferral 0..* and
    setTreatment 0..* and
    procedureProposal 0..* and
    alsoImportant 0..* and
    answerToYourQuestion 0..* and
    screeningRiskFactors 0..* and
    diagnosisConclusion 0..* and
    recommendationYourFollowup 0..*

* component[reasonContextReferral].code = $LNC#42349-1 "Reason for referral (narrative)"


Mapping: hzp-Core
Id: hzp-Core
Title: "Huisartsoverdrachten - Kern"
Source: HzpCore
Target: "https://decor.nictiz.nl/art-decor/decor-datasets--hg"
* component[setTreatment].valueString -> "hg-dataelement-1711" "IngesteldeBehandeling"

Mapping: zib-clinicalnote-v1.0
Id: zib-ClinicalNote-v1.0
Title: "zib ClinicalNote-v1.0"
Source: HzpCore
Target: "https://zibs.nl/wiki/ClinicalNote-v1.0(EN)"
* effectiveDateTime -> "NL-CM:21.3.2" "CoreDateTime"
* performer -> "NL-CM:21.3.3" "Author::HealthProfessional"
* component.code -> "NL-CM:21.3.6 " "CoreCode"
* component.valueString -> "NL-CM:21.3.8" "CoreText"