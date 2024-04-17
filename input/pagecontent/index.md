# OneHealth - Zoonosis Surveillance IG

This is a draft Implementation Guide (IG) for the OneHealth Zoonosis Surveillance tracker program. This guide is designed to represent the DHIS2 zoonosis surveillance program within the context of OneHealth's initiatives. This IG is a draft and is not intended for production use.

## Contents (Artifact Index)

### Logical Models

The Logical Models section defines the structured data models used within the OneHealth Zoonosis Surveillance program. These models outline the essential data points required for surveillance activities, specifying data types, hierarchies, and relationships without prescribing specific user interaction mechanisms or display guidelines. An example of how elements within these logical models can be adapted to FHIR terminology includes the mapping of the attribute "country" in [Zoonosis Surveillance](StructureDefinition-ZoonosisSurveillance.html) to the [FHIR "country" ValueSet](http://terminology.hl7.org/ValueSet/v3-Country), moving away from the [Empresi countries ValueSet](ValueSet-empresi-countries-vs.html), which lacked identifying codes.

### Value Sets and Code Systems

This section includes the definitions of the Value Sets and Code Systems utilized throughout the IG. These components represent the various options available in the program, translating program-specific terminologies into code systems that provides the codes and names for the different option sets defined in the DHIS2 metadata.

### Examples

To demonstrate the practical application of the logical models in FHIR, we have included two examples: the [Animal Surveillance Questionnaire](Questionnaire-AnimalSurveillanceQuestionnaire.html) and [Animal Surveillance QuestionnaireResponse](Questionnaire-AnimalSurveillanceQuestionnaire.html). The questionnaire is crafted from the Logical Model and showcases the data collection aspects of the IG. It exemplifies how structured data elements from the Logical Models section can be utilized in a user-facing application, emphasizing the difference in focus between data definition (Logical Model) and data collection (Questionnaire).

Accompanying the questionnaire, the QuestionnaireResponse serves as a practical example of how the collected data is recorded and stored within a FHIR-based system. This response artifact demonstrates the actual inputs provided by users, reflecting real-world data capture scenarios. It validates the structured approach of the logical models by populating them with data, thus highlighting the practical usability and effectiveness of the designed questionnaire in capturing comprehensive surveillance data according to the specified standards and requirements.

# Disclaimer

The specification herewith documented is a demo working specification, and may not be used for any implementation purposes. This draft is provided without warranty of completeness or consistency, and the official publication supersedes this draft.
No liability can be inferred from the use or misuse of this specification, or its consequences.