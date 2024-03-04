

Extension:		NameProtectionFlag_ext
Id:				NameProtectionFlag-id
Title:			"NameProtectionFlag"
Description:	"This indicator denotes that the person’s name information is to be held ‘in confidence’"
* ^url = "http://canshare.co.nz/StructureDefinition/canshare-nameprot"
* value[x] only boolean

Extension:		age_ext
Id:				age-id
Title:			"age"
* ^url = "http://canshare.co.nz/StructureDefinition/canshare-age"
* value[x] only string

Extension:		Sex_ext
Id:				Sex-id
Title:			"Sex"
Description:	"A classification of the person's sex characteristics such as chromosomes, hormones and reproductive organs (Stats NZ Statistical standard for gender, sex, and variations of sex characteristics)."
* ^url = "http://canshare.co.nz/StructureDefinition/canshare-sex"
* value[x] only CodeableConcept
* value[x] from https://nzhts.digital.health.nz/fhir/ValueSet/canshare-sex (preferred)

Extension:		Ethnicity_ext
Id:				Ethnicity-id
Title:			"Ethnicity"
Description:	"A classification of the ethnicity of an individual person as self-identified by the person"
* ^url = "http://canshare/ethnicity"
* value[x] only CodeableConcept
* value[x] from http://hl7.org.nz/fhir/StructureDefinition/nz-ethnicity (preferred)

Extension:		Suburb_ext
Id:				Suburb-id
Title:			"Suburb"
Description:	"The name of the suburb or district within a city/town."
* ^url = "http://canshare.co.nz/StructureDefinition/suburb-ext"
* value[x] only string