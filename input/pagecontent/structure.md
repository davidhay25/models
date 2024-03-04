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

![](LIM-1.png)