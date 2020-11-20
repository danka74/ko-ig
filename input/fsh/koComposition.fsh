Profile: KOComposition
Parent: Composition
Id: ko-composition
* insert SEStandardRuleSet
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code.coding.code"
* section ^slicing.rules = #open
* section contains
    chiefComplaint 1..1 and
    anObservation 0..*

* section[chiefComplaint].code.coding.userSelected = false
* section[chiefComplaint].code.coding.system = "http://snomed.info/sct"
* section[chiefComplaint].code.coding.code = #123456789
* section[chiefComplaint].code.coding.display = "Kontaktorsak"
* section[chiefComplaint].entry  only Reference(DemandForCare)

* section[anObservation].code.coding.userSelected = false
* section[anObservation].code.coding.system = "http://snomed.info/sct"
* section[anObservation].code.coding.code = #987654321
* section[anObservation].code.coding.display = "Något annat"
* section[anObservation].entry  only Reference(Observation)