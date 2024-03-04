
Profile:		HistopathologyRequestColorectalResectionMetastectomy_profile
Parent:		Composition
Id:			HistopathologyRequestColorectalResectionMetastectomy-id
Title:			"Colorectal (metastectomy) - Histopathology request"
Description:	"A histopathology request form for colorectal metastectomy specimens."


* section ^slicing.discriminator.type = #pattern
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open


* section.entry ^slicing.discriminator.type = #profile
* section.entry ^slicing.discriminator.path = "resolve()"
* section.entry ^slicing.rules = #open
* section contains
	PatientDetails 1..1 and
	Administration 1..1 and
	ReferralPathway 1..1 and
	ClinicalInformation 0..1 and
	ClinicalStaging 0..1 and
	Tumour 1..1 and
	Procedure 1..1 and
	AdditionalSpecimen 0..1 


* section[PatientDetails].code = http://dummy.org#PatientDetails
* section[PatientDetails].entry = Reference(SectionPathologyPatient)


* section[Administration].code = http://dummy.org#Administration
* section[Administration].entry = Reference(SectionPathologyRequestAdministration)


* section[ReferralPathway].code = http://dummy.org#ReferralPathway
* section[ReferralPathway].entry = Reference(SectionColorectalResectionReferralPathway)


* section[ClinicalInformation].code = http://dummy.org#ClinicalInformation
* section[ClinicalInformation].entry = Reference(ColorectalHistoMetaResectionRequestClinicalInfo)


* section[ClinicalStaging].code = http://dummy.org#ClinicalStaging
* section[ClinicalStaging].entry = Reference(ColorectalHistoRequestClinicalStaging)


* section[Tumour].code = http://dummy.org#Tumour
* section[Tumour].entry = Reference(ColorectalHistoMetastectomyRequestTumour)


* section[Procedure].code = http://dummy.org#Procedure
* section[Procedure].entry = Reference(ColorectalHistoMetaResectionRequestProcedure)


* section[AdditionalSpecimen].code = http://dummy.org#AdditionalSpecimen
* section[AdditionalSpecimen].entry = Reference(ColorectalHistoRequestMetastectomyAdditionalSpecimen)
Profile:		HistopathologyRequestColorectalDiagnostic_profile
Parent:		Composition
Id:			HistopathologyRequestColorectalDiagnostic-id
Title:			"Colorectal (diagnostic) - Histopathology request"
Description:	"A histopathology request form for colorectal small diagnostic symptomatic specimens."


* section ^slicing.discriminator.type = #pattern
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open


* section.entry ^slicing.discriminator.type = #profile
* section.entry ^slicing.discriminator.path = "resolve()"
* section.entry ^slicing.rules = #open
* section contains
	PatientDetails 1..1 and
	Administration 1..1 and
	ReferralPathway 1..1 and
	ClinicalInformation 0..1 and
	Specimen 1..* and
	Procedure 1..1 


* section[PatientDetails].code = http://dummy.org#PatientDetails
* section[PatientDetails].entry = Reference(SectionPathologyPatient)


* section[Administration].code = http://dummy.org#Administration
* section[Administration].entry = Reference(SectionPathologyRequestAdministration)


* section[ReferralPathway].code = http://dummy.org#ReferralPathway
* section[ReferralPathway].entry = Reference(SectionColorectalDiagnosticReferralPathway)


* section[ClinicalInformation].code = http://dummy.org#ClinicalInformation
* section[ClinicalInformation].entry = Reference(ColorectalHistoDiagnosticRequestClinicalInfo)


* section[Specimen].code = http://dummy.org#Specimen
* section[Specimen].entry = Reference(ColorectalDiagnosticHistoRequestSpecimen)


* section[Procedure].code = http://dummy.org#Procedure
* section[Procedure].entry = Reference(ColorectalHistoDiagnosticRequestProcedure)
Profile:		NewComposition_profile
Parent:		Composition
Id:			NewComposition-id
Title:			"New Composition"


* section ^slicing.discriminator.type = #pattern
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open


* section.entry ^slicing.discriminator.type = #profile
* section.entry ^slicing.discriminator.path = "resolve()"
* section.entry ^slicing.rules = #open
* section contains
	Patient 0..1 


* section[Patient].code = http://dummy.org#Patient
* section[Patient].entry = Reference(BodySite)