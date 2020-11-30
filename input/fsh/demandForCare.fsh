ValueSet: ChiefComplaintValueSet
Title: "Chief Complaint Value Set"
Id: chief-complaint
Description: """Codes describing the patient's reason for a request for care, taken from SNOMED-CT. 
Consumer-friendly terms for this ValueSet are available in the language reference set http://snomed.info/sct/45991000052106/id/64311000052107"""
* insert SEStandardRuleSet
* codes from system http://snomed.info/sct|http://snomed.info/sct/45991000052106 where concept in "60001000052100"

rofile: DemandForCareStatedByPatientOrThirdParty
Parent: ServiceRequest
Id: demand-for-care-stated-by-patient-or-third-party
Title: "Demand For Care"
Description: "A demand for care as stated by a patient or a third party. Only one reason per demand for care."
* insert SEStandardRuleSet
* intent = #directive // the exact value for intent must be confirmed
* reasonCode 0..1
* reasonCode from ChiefComplaintValueSet (extensible)
* requester only Reference(Patient or RelatedPerson)
* subject only Reference(Patient)

Mapping: DemandForCareStatedByPatientOrThirdPartyNI
Source: DemandForCareStatedByPatientOrThirdParty
Target: "http://informationsstruktur.socialstyrelsen.se/nim/hos/NIM-Vårdbegäran-för-egen-räkning"
Title: "NIM Vårdbegäran för egen räkning"
Id: ni-nim-vardbegaran-for-egen-rakning
* -> "Vårdbegäran"
* reasonCode -> "orsak"
