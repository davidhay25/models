# Structure of models

Describe the overall structure of DataGroups and Compositions.

**DataGroups** are the 'atomic' units from which compositions are created. They use FHIR datatypes and the
intention is that a DG will have an assiciated profile for validation purposes. Internally, DG's
have a hierarchy where one DG can inherit elements from a parent, and then constrain them or
add new elements. In this guide, the hierarchy is not (currently) shown - rather each DH is expanded
to give a complete view of the model.

A **Composition** is a selection of DGs for some purpose. The tooling can generate a **Questionnaire** from the composition. This could be:

* Generation of a HISO standard (as we've been doing with the previous work)
* The contents of a Questionnaire that can be used for data collection purposes

Note that the relationship between the 'HISO standard' compositions and compositions for generating
a Questionnaire is not yet determined. The 'HISO standard' compositions are much too detailed to 
present to a user (though a Q can be generated to support form-based review)

A number of possibilities come to mind.

* A single composition might be the basis for multiple Questionnaires - some for the HISO standard and others for user facing forms. This would require tooling that allows the form designer to pick and choose the elements to appear in a form (? would there only be 1 - ie each composition has a Q for the standard and a Q for the form.)
* A separate composition is used for the HISO standard and the user form. This does mean that DG's outside of the HISO standard could be used - could be good or bad.
