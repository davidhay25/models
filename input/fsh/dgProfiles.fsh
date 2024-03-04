
Profile:		Patient_profile
Parent:			Patient
Id:				Patient-id
Title:			"Patient"
Description:	"Identifying and demographic details about the patient."


* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"

* identifier ^slicing.rules = #open

* identifier contains 
    NHI 0..1

* identifier[NHI].system = "https://standards.digital.health.nz/ns/nhi-id" (exactly)
* identifier[NHI].use from http://canshare/canuse
* name 1..1
* name.given 0..1
* birthDate 0..1
* gender = http://snomed.info/sct#male  //fixed value


* extension contains 
	http://canshare.co.nz/StructureDefinition/canshare-nameprot named NameProtectionFlag 0..1 and
	http://canshare.co.nz/StructureDefinition/canshare-age named age 0..1 and
	http://canshare.co.nz/StructureDefinition/canshare-sex named Sex 0..1 and
	http://canshare/ethnicity named Ethnicity 1..* and
	http://canshare.co.nz/StructureDefinition/suburb-ext named Suburb 0..1 



Profile:		Observation_profile
Parent:			Observation
Id:				Observation-id
Title:			"Observation"
Description:	"A measurement or assertion made about a patient, e.g. a clinical assessment, imaging results, or laboratory finding."




* extension contains 
	http://canshare.co.nz/StructureDefinition/canshare-age named age 0..1 



Profile:		BodySurfaceArea_profile
Parent:			Observation
Id:				BodySurfaceArea-id
Title:			"Body surface area (BSA)"
Description:	"The measured or calculated surface area of the patient's body."


* code = http://snomed.info/sct#bsa  //fixed value


* extension contains 
	http://canshare.co.nz/StructureDefinition/canshare-age named age 0..1 



Profile:		BodyHeight_profile
Parent:			Observation
Id:				BodyHeight-id
Title:			"Height"
Description:	"The distance from the bottom of the patient's feet to the top of their head, while they are standing."


* code = http://snomed.info/sct#wt  //fixed value


* extension contains 
	http://canshare.co.nz/StructureDefinition/canshare-age named age 0..1 


