Logical:	 HistopathologyRequestSoftTissueBiopsy
Id:		 HistopathologyRequestSoftTissueBiopsy
Title:		 "Soft tissue (biopsy) - Histopathology request"
Description:	 "A histopathology request form for soft tissue tumours from a biopsy specimen."

* PatientDetails 1..1 BackboneElement "Patient details"
* Administration 1..1 BackboneElement "Administration"
  * Patient 0..1 BackboneElement "A short summary of the main identifying details for a patient.."
    * Nhi 1..1 Identifier "A unique identifier assigned to a person by the NHI system."
    * NZName 0..1 BackboneElement "A person’s name details"
      * Title 0..1 CodeableConcept "The ‘Title (prefix)’ is an honorific form of address preceding a name, used when addressing a person"
      * GivenName 0..1 string "The person’s forename or given name at birth"
      * OtherGivenName 0..* string "The person’s other given names or middle name and initials, but not the family name at birth"
      * FamilyName 0..1 string "The family name (surname) of a person as distinct from their given, second and subsequent name(s)"
      * NameSuffix 0..* string "The suffix contains the parts of a person’s name attached to the end of a name but other than the title, given names and family name – eg, awards, qualifications, academic, honorary, esquire, professional and professional membership"
      * PreferredNameIndicator 0..1 CodeableConcept "An indicator used to denote that a particular person name is the person’s preferred name"
      * NameProtectionFlag 0..1 CodeableConcept "This indicator denotes that the person’s name information is to be held ‘in confidence’"
      * NameInfoSource 0..1 CodeableConcept "A code indicating the name source"
      * NameEffectivePeriod 0..1 Period "The date(s) the name is effective from and/or to"
    * BirthdatePlace 0..1 BackboneElement "A person’s birth details"
      * DOB 0..1 date "The date on which the person was born"
      * DOBInfoSource 0..1 CodeableConcept "A code indicating the origin of date of birth information"
      * PlaceBirth 0..1 string "The town, suburb, city etc where the person was born"
      * CountryBirthCode 0..1 CodeableConcept "Country where the person was born"
      * CountryBirthInfoSource 0..1 CodeableConcept "A code indicating the source of information supporting the code for country of birth"
    * Age 0..1 integer "The age of the patient at the time the data was recorded."
    * Gender 0..1 CodeableConcept "A classification of the person's gender as self-identified by the person"
    * Sex 0..1 CodeableConcept "A classification of the person's sex characteristics such as chromosomes, hormones and reproductive organs (Stats NZ Statistical standard for gender, sex, and variations of sex characteristics)."
    * Ethnicity 0..* CodeableConcept "A classification of the ethnicity of an individual person as self-identified by the person"
    * Ethnicity from https://nzhts.digital.health.nz/fhir/ValueSet/ethnic-group-level-4-code (preferred)
    * Address 0..* BackboneElement "The person's current address or location details if known (in NZ CIQ address profile format."
      * Type 0..1 CodeableConcept "The type of address, e.g. residential (physical), mailing (postal)"
      * BuildingName 0..1 string "The name of the building or institution."
      * StreetAddress1 0..1 string "The floor, unit and/or street address details."
      * StreetAddress2 0..1 string "Other geographic information related to the address"
      * Suburb 0..1 string "The name of the suburb or district within a city/town."
      * City 0..1 string "SectionPathologyPatient.Patient.Address.City"
      * City from https://nzhts.digital.health.nz/fhir/ValueSet/Thenameofthecityoftown. (preferred)
      * Postcode 0..1 string "The numeric descriptor for a postal delivery area, aligned with the locality, suburb or place for this address."
      * CountryCode 0..1 code "The two character ISO code that forms part of the address."
      * AddressProtectedFlag 0..1 CodeableConcept "This indicator denotes that the person’s address information is to be held ‘in confidence’"
      * PermanentAddressFlag 0..1 CodeableConcept "An indicator used to denote an address is a permanent address"
      * DateAddressPeriod 0..1 Period "Date(s) that an address is effective from and/or to"
      * DomicileCode 0..1 CodeableConcept "New Zealand health domicile code representing a person’s usual residential address"
      * PrimaryAddressFlag 0..1 CodeableConcept "An indicator used to denote that the address is the primary address for the person"

* ClinicalInformation 1..1 BackboneElement "Clinical information"
  * Administration 1..1 BackboneElement "Administration details as seen on a pathology request form."
    * DocumentId 0..* Identifier "A version-independent identifier for the document"
    * LocalDocumentIdentifier 0..1 Identifier "A local identifier of the document that is unique only at the facility at which the document is created."
    * Version 0..1 string "An explicitly assigned identifier of a variation of the content in the document."
    * Author 0..1 BackboneElement "The healthcare practitioner who authored of the document."
      * Id 0..1 Identifier "The identifier of the healthcare practitioner."
      * Name 0..1 string "The name of the healthcare practitioner."
      * Specialty 0..* CodeableConcept "The profession or specialty of the healthcare practitioner, e.g. nurse, pharmacist, medical oncologist, pathologist, surgeon."
      * Facility 0..1 BackboneElement "A facility at which the healthcare practitioner practices."
        * Id 0..* Identifier "The identifier of the healthcare facility."
        * Alias 0..1 string "An abbreviation of the healthcare facility's name that is commonly used."
    * AuthoredDate 0..1 dateTime "The date on which this version of the document was authored."
    * Status 1..1 code "The status of the document (as defined by HL7 FHIR)"
    * Category 0..* CodeableConcept "The high-level kind of the document, e.g. pathology request, pathology report, treatment plan."
    * Type 1..1 CodeableConcept "The specific type of document, e.g. breast pathology request for biopsy specimens"
    * Encounter 0..1 Identifier "The patient encounter associated with this document."
    * Requester 0..1 BackboneElement "The healthcare practitioner who is requesting the service."
      * Id 0..1 Identifier "The identifier of the healthcare practitioner."
      * Name 0..1 string "The name of the healthcare practitioner."
      * Specialty 0..* CodeableConcept "The profession or specialty of the healthcare practitioner, e.g. nurse, pharmacist, medical oncologist, pathologist, surgeon."
      * Facility 0..1 BackboneElement "A facility at which the healthcare practitioner practices."
        * Id 0..* Identifier "The identifier of the healthcare facility."
        * Alias 0..1 string "An abbreviation of the healthcare facility's name that is commonly used."
    * Performer 0..* BackboneElement "The healthcare practitioner and/or facility from whom the service is being requested."
      * Id 0..1 Identifier "The identifier of the healthcare practitioner."
      * Name 0..1 string "The name of the healthcare practitioner."
      * Specialty 0..* CodeableConcept "The profession or specialty of the healthcare practitioner, e.g. nurse, pharmacist, medical oncologist, pathologist, surgeon."
      * Facility 0..1 BackboneElement "A facility at which the healthcare practitioner practices."
        * Id 0..* Identifier "The identifier of the healthcare facility."
        * Alias 0..1 string "An abbreviation of the healthcare facility's name that is commonly used."
    * CopyTo 0..* BackboneElement "Any healthcare practitioners to whom a copy of the report should be sent (in addition to the requester)."
      * Id 0..1 Identifier "The identifier of the healthcare practitioner."
      * Name 0..1 string "The name of the healthcare practitioner."
      * Specialty 0..* CodeableConcept "The profession or specialty of the healthcare practitioner, e.g. nurse, pharmacist, medical oncologist, pathologist, surgeon."
      * Facility 0..1 BackboneElement "A facility at which the healthcare practitioner practices."
        * Id 0..* Identifier "The identifier of the healthcare facility."
        * Alias 0..1 string "An abbreviation of the healthcare facility's name that is commonly used."
    * Intent 1..1 CodeableConcept "The main purpose of the service requested, e.g. diagnostic, treatment"
    * InvestigationCategory 0..1 CodeableConcept "The high-level kind of investigation requested, e.g. radiology, pathology, surgery."
    * InvestigationType 1..1 CodeableConcept "The type of investigation requested, e.g. ultrasound, histology, cytology, colonoscopy."
    * TissueBankingConsent 0..1 CodeableConcept "Whether or not the patient has consented to have their tissue stored for future research (either specified or unspecified)."
    * TissueBankingConsent from https://nzhts.digital.health.nz/fhir/ValueSet/canshare-consent-details (preferred)
    * TissueReturnRequest 0..1 CodeableConcept "Whether or not the patient has requested to have their tissue returned to them, e.g. return, don't return, partial return."

* Tumour 1..* BackboneElement "Tumour"
  * ClinicalPresentation 0..1 BackboneElement "Relevant clinical symptoms or findings that the patient presents with, e.g.lump."
    * Status 1..1 CodeableConcept "The status of the observation"
    * Code 1..1 CodeableConcept "The type of observation made."
    * Code from https://nzhts.digital.health.nz/fhir/ValueSet/canshare-observation (preferred)
    * Comments 0..1 string "Plain text comments about the observation."
  * Spread 0..1 BackboneElement "Details about how far and where the cancer has spread."
    * AdjacentOrganInvolvement 0..1 CodeableConcept "Whether or not the tumour has invaded into adjacent organs."
    * AdjacentOrganInvolvementComments 0..1 string "Free text comments that describe whether or not the tumour has invaded adjacent organs, and if so which ones."
    * DistantMetastasisComments 0..1 string "Free text comments about any distant metastasis of the tumour."
  * PreviousRelevantPathology 0..1 BackboneElement "Any pathology results that are relevant to this histopathology request."
    * Status 1..1 CodeableConcept "The status of the observation"
    * Code 1..1 CodeableConcept "The type of observation made."
    * Code from https://nzhts.digital.health.nz/fhir/ValueSet/canshare-observation (preferred)
    * Comments 0..1 string "Plain text comments about the observation."
  * Radiology 0..1 BackboneElement "The radiologic imaging used to examine parts of the body to aid diagnosis and guide treatment plans."
    * Comments 0..1 string "Free text comments about the radiology imaging procedure and/or their results."
  * ClinicalFinding 0..1 BackboneElement "Any additional clinical information that is relevant to the histopathology request."
    * Status 1..1 CodeableConcept "The status of the observation"
    * Code 1..1 CodeableConcept "The type of observation made."
    * Code from https://nzhts.digital.health.nz/fhir/ValueSet/canshare-observation (preferred)
    * Comments 0..1 string "Plain text comments about the observation."

* Specimen 1..* BackboneElement "Specimen"
  * Tumour 0..1 BackboneElement "An abnormal change and/or damage in a body structure or tissue."
    * TumourId 0..1 string "The number or identifier used to reference the given lesion/tumour."
    * TumourSite 0..1 BackboneElement "The body location of the lesion/tumour."
      * BodyStructure 1..1 CodeableConcept "The anatomical structure being described"
      * BodyStructure from https://nzhts.digital.health.nz/fhir/ValueSet/canshare-topography (preferred)
      * Laterality 0..1 CodeableConcept "The side of a paired organ or the side of the body relative to the midline."
      * Laterality from https://nzhts.digital.health.nz/fhir/ValueSet/canshare-laterality (preferred)
      * Comments 0..1 CodeableConcept "Free text comments describing the body site."
    * Comments 0..1 string "Free text comments about the lesion/tumour."
  * TumourDepth 0..1 BackboneElement "The deepest layer in which the tumour is present."
    * Status 1..1 CodeableConcept "The status of the observation"
    * Code 1..1 CodeableConcept "The type of observation made."
    * Code from https://nzhts.digital.health.nz/fhir/ValueSet/canshare-observation (preferred)
  * TumourDimensions 0..1 BackboneElement "The size of the tumour measured in one or more dimension."
    * Status 1..1 CodeableConcept "The status of the observation"
    * Code 1..1 CodeableConcept "The type of observation made."
    * Code from https://nzhts.digital.health.nz/fhir/ValueSet/canshare-observation (preferred)
    * MaximumTumourDimension 0..1 Quantity "A measurement of the largest dimension of the tumour."
    * Dimension 0..* BackboneElement "A measurement of one of the dimensions of the tumour."
      * Type 1..1 CodeableConcept "The type of dimension in which this measurement was taken, e.g. length, width, depth."
      * Size 1..1 Quantity "The size of the lesion in the given dimension."

  * Specimen 0..1 BackboneElement "A sample to be used for analysis."
    * Id 0..* Identifier "An identifier for the specimen, e.g. a barcode."
    * Category 0..1 CodeableConcept "The category of specimen, e.g. biopsy specimen"
    * Type 0..1 CodeableConcept "The type of specimen, e.g. core biopsy specimen, lymph node excision specimen."
    * Collection 0..1 BackboneElement "Details about the collection of the specimen."
      * CollectionDate 0..1 dateTime "The date and/or time that the sample/specimen was collected."
      * BodySite 0..1 BackboneElement "The site from which the sample/specimen was collected."
        * BodyStructure 1..1 CodeableConcept "The anatomical structure being described"
        * BodyStructure from https://nzhts.digital.health.nz/fhir/ValueSet/canshare-topography (preferred)
        * Laterality 0..1 CodeableConcept "The side of a paired organ or the side of the body relative to the midline."
        * Laterality from https://nzhts.digital.health.nz/fhir/ValueSet/canshare-laterality (preferred)
        * Comments 0..1 CodeableConcept "Free text comments describing the body site."
    * ContainerQuantity 0..1 Quantity "A count of the number of containers (e.g. 3 tubes, 4 slides, 1 bottle) in which the specimen is placed after collection."
    * Container 0..* BackboneElement "An individual container (e.g. a specific tube) in which the specimen is placed."
      * Identifier 0..1 Identifier "An identifier for the individual specimen container."
      * MediumStatus 0..1 CodeableConcept "Whether or not the specimen is fresh or in a medium."
      * MediumType 0..1 CodeableConcept "The type of medium used for the specimen in the container."
      * Quantity 0..1 Quantity "The quantity of specimen (volume, weight or count of pieces/fragments) placed in this individual container."
    * Comments 0..1 string "Free text comments about the specimen."
  * ClinicalImpression 0..1 BackboneElement "The suspected behaviour of the specimen, e.g. benign, in situ, malignant."
    * Status 1..1 CodeableConcept "The status of the observation"
    * Code 1..1 CodeableConcept "The type of observation made."
    * Code from https://nzhts.digital.health.nz/fhir/ValueSet/canshare-observation (preferred)
    * Value 1..1 CodeableConcept "The suspected behaviour of the specimen, e.g. benign, in situ, malignant."
  * AncillaryStudies 0..* BackboneElement "A diagnostic test on a specimen, which is supplementary to the main test."
    * Status 1..1 CodeableConcept "The status of the observation"
    * Code 1..1 CodeableConcept "The type of observation made."
    * Code from https://nzhts.digital.health.nz/fhir/ValueSet/canshare-observation (preferred)