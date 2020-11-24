ValueSet: ChiefComplaintValueSet
Title: "Chief Complaint Value Set"
Id: chief-complaint
Description: """Codes describing the patient's reason for a request for care, taken from SNOMED-CT. 
Consumer-friendly terms for this ValueSet are available in the language reference set http://snomed.info/sct/45991000052106/id/64311000052107"""
* insert SEStandardRuleSet
* codes from system http://snomed.info/sct|http://snomed.info/sct/45991000052106 where concept in "60001000052100"

Profile: DemandForCare
Parent: ServiceRequest
Id: demand-for-care
Title: "Demand For Care"
Description: "A demand for care as stated by a patient."
* insert SEStandardRuleSet
* reasonCode 1..*
* reasonCode from ChiefComplaintValueSet (extensible)
* requester only Reference(Patient or RelatedPerson)

Mapping: DemandForCareNI
Source: DemandForCare
Target: "https://informationsstruktur.socialstyrelsen.se/nim/hos/NIM-Vardbegaran-for-egen-rakning"
Title: "NIM Vårdbegäran för egen räkning"
Id: ni-nim-vardbegaran-for-egen-rakning
* -> "Vårdbegäran"
* reasonCode -> "orsak"
