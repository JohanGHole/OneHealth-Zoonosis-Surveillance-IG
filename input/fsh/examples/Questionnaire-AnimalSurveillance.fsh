Instance: AnimalSurveillanceQuestionnaire
InstanceOf: Questionnaire
Usage: #example
Title: "Animal Surveillance Questionnaire"
Description: "A questionnaire instance adapted for capturing detailed animal surveillance data according to the specified logical model."

* status = #draft
* name = "AnimalSurveillanceQuestionnaire"
* date = "2024-04-17"
* experimental = true
* title = "Animal Surveillance Questionnaire"
* publisher = "DHIS2 / OneHealth"

// Reporting Date
* item[0].type = #date
* item[=].linkId = "reportingDate"
* item[=].text = "Reporting Date"
* item[=].prefix = "1"

// Epidemiology Information Section
* item[+].type = #group
* item[=].linkId = "epidemiologyInformation"
* item[=].text = "Epidemiology Information"
* item[=].required = true
* item[=].prefix = "2"

* item[=].item[0].type = #choice
* item[=].item[=].linkId = "animalClass"
* item[=].item[=].text = "Animal Class"
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://dhis2.org/fhir/ValueSet/animal-class-vs"
* item[=].item[=].prefix = "2.1"

* contained[+] = AnimalClassVS
* contained[+] = AnimalSpeciesVS
* contained[+] = AnimalTypeVS
* contained[+] = YesNoUnknownVS
* contained[+] = ProductionSystemOneVS
* contained[+] = ProductionSystemTwoVS
* contained[+] = ClinicalSignsVS
* contained[+] = NecropsyLesionsVS
* contained[+] = SurveillanceTypeVS
* contained[+] = InfectionSourceVS
* contained[+] = DiseasesVS
* contained[+] = DiseaseStatusVS
* contained[+] = DiseaseSubtypeVS
* contained[+] = CladeVS
* contained[+] = DiagnosisBasisVS
* contained[+] = DiagnosticSourceVS


* item[=].item[+].type = #choice
* item[=].item[=].linkId = "animalSpecies"
* item[=].item[=].text = "Animal Species"
* item[=].item[=].required = false
* item[=].item[=].answerValueSet = "https://dhis2.org/fhir/ValueSet/animal-species-vs"
* item[=].item[=].prefix = "2.2"

* item[=].item[+].type = #choice
* item[=].item[=].linkId = "animalType"
* item[=].item[=].text = "Animal Type"
* item[=].item[=].required = false
* item[=].item[=].answerValueSet = "https://dhis2.org/fhir/ValueSet/animal-type-vs"
* item[=].item[=].prefix = "2.3"

* item[=].item[+].type = #integer
* item[=].item[=].linkId = "animalsAtRisk"
* item[=].item[=].text = "Animals at Risk"
* item[=].item[=].required = false
* item[=].item[=].prefix = "2.4"

* item[=].item[+].type = #integer
* item[=].item[=].linkId = "animalsCases"
* item[=].item[=].text = "Animals Cases"
* item[=].item[=].required = false
* item[=].item[=].prefix = "2.5"

* item[=].item[+].type = #integer
* item[=].item[=].linkId = "animalsDeaths"
* item[=].item[=].text = "Animals Deaths"
* item[=].item[=].required = false
* item[=].item[=].prefix = "2.6"

* item[=].item[+].type = #integer
* item[=].item[=].linkId = "animalsDestroyed"
* item[=].item[=].text = "Animals Destroyed"
* item[=].item[=].required = false
* item[=].item[=].prefix = "2.7"

* item[=].item[+].type = #integer
* item[=].item[=].linkId = "animalsSlaughtered"
* item[=].item[=].text = "Animals Slaughtered"
* item[=].item[=].required = false
* item[=].item[=].prefix = "2.8"

* item[=].item[+].type = #choice
* item[=].item[=].linkId = "vaccination"
* item[=].item[=].text = "Vaccination"
* item[=].item[=].required = false
* item[=].item[=].answerValueSet = "https://dhis2.org/fhir/ValueSet/yes-no-unknown-vs"
* item[=].item[=].prefix = "2.9"

* item[=].item[+].type = #integer
* item[=].item[=].linkId = "vaccinated"
* item[=].item[=].text = "Number of vaccinated animals"
* item[=].item[=].required = false
* item[=].item[=].prefix = "2.10"

* item[=].item[+].type = #choice
* item[=].item[=].linkId = "productionSystemOne"
* item[=].item[=].text = "Production System One"
* item[=].item[=].required = false
* item[=].item[=].answerValueSet = "https://dhis2.org/fhir/ValueSet/production-system-one-vs"
* item[=].item[=].prefix = "2.11"

* item[=].item[+].type = #choice
* item[=].item[=].linkId = "productionSystemTwo"
* item[=].item[=].text = "Production System Two"
* item[=].item[=].required = false
* item[=].item[=].answerValueSet = "https://dhis2.org/fhir/ValueSet/production-system-two-vs"
* item[=].item[=].prefix = "2.12"

// Clinical Signs and Necropsy Lesions Section
* item[+].type = #group
* item[=].linkId = "clinicalSignsAndNecropsyLesions"
* item[=].text = "Clinical Signs and Necropsy Lesions"
* item[=].required = false
* item[=].prefix = "3"

* item[=].item[0].type = #choice
* item[=].item[=].linkId = "clinicalSigns"
* item[=].item[=].text = "Clinical Signs"
* item[=].item[=].required = false
* item[=].item[=].answerValueSet = "https://dhis2.org/fhir/ValueSet/clinical-signs-vs"
* item[=].item[=].repeats = true
* item[=].item[=].maxLength = 5
* item[=].item[=].prefix = "3.1"

* item[=].item[+].type = #choice
* item[=].item[=].linkId = "necropsyLesions"
* item[=].item[=].text = "Necropsy Lesions"
* item[=].item[=].required = false
* item[=].item[=].answerValueSet = "https://dhis2.org/fhir/ValueSet/necropsy-lesions-vs"
* item[=].item[=].repeats = true
* item[=].item[=].maxLength = 5
* item[=].item[=].prefix = "3.2"

// Surveillance Type and Infection Source Section
* item[+].type = #group
* item[=].linkId = "surveillanceTypeAndInfectionSource"
* item[=].text = "Surveillance Type and Infection Source"
* item[=].required = false
* item[=].prefix = "4"

* item[=].item[0].type = #choice
* item[=].item[=].linkId = "surveillanceType"
* item[=].item[=].text = "Surveillance Type"
* item[=].item[=].required = false
* item[=].item[=].answerValueSet = "https://dhis2.org/fhir/ValueSet/surveillance-type-vs"
* item[=].item[=].prefix = "4.1"

* item[=].item[+].type = #choice
* item[=].item[=].linkId = "infectionSource"
* item[=].item[=].text = "Infection Source"
* item[=].item[=].required = false
* item[=].item[=].answerValueSet = "https://dhis2.org/fhir/ValueSet/infection-source-vs"
* item[=].item[=].repeats = true
* item[=].item[=].maxLength = 5
* item[=].item[=].prefix = "4.2"

// Diagnosis Section
* item[+].type = #group
* item[=].linkId = "diagnosis"
* item[=].text = "Diagnosis Information"
* item[=].required = false
* item[=].prefix = "5"

* item[=].item[0].type = #choice
* item[=].item[=].linkId = "diseaseStatus"
* item[=].item[=].text = "Disease Status"
* item[=].item[=].required = false
* item[=].item[=].answerValueSet = "https://dhis2.org/fhir/ValueSet/disease-status-vs"
* item[=].item[=].prefix = "5.1"

* item[=].item[+].type = #choice
* item[=].item[=].linkId = "disease"
* item[=].item[=].text = "Disease"
* item[=].item[=].required = false
* item[=].item[=].answerValueSet = "https://dhis2.org/fhir/ValueSet/diseases-vs"
* item[=].item[=].prefix = "5.2"

* item[=].item[+].type = #choice
* item[=].item[=].linkId = "diseaseSubtypes"
* item[=].item[=].text = "Disease Subtypes"
* item[=].item[=].required = false
* item[=].item[=].answerValueSet = "https://dhis2.org/fhir/ValueSet/disease-subtype-vs"
* item[=].item[=].repeats = true
* item[=].item[=].prefix = "5.3"

* item[=].item[+].type = #choice
* item[=].item[=].linkId = "clade"
* item[=].item[=].text = "Clade"
* item[=].item[=].required = false
* item[=].item[=].answerValueSet = "https://dhis2.org/fhir/ValueSet/clade-vs"
* item[=].item[=].repeats = false
* item[=].item[=].prefix = "5.4"

* item[=].item[+].type = #choice
* item[=].item[=].linkId = "diagnosticSource"
* item[=].item[=].text = "Diagnostic Source"
* item[=].item[=].answerValueSet = "https://dhis2.org/fhir/ValueSet/diagnostic-source-vs"
* item[=].item[=].prefix = "5.5"

* item[=].item[+].type = #choice
* item[=].item[=].linkId = "diagnosisBasis"
* item[=].item[=].text = "Diagnosis Basis"
* item[=].item[=].required = false
* item[=].item[=].answerValueSet = "https://dhis2.org/fhir/ValueSet/diagnosis-basis-vs"
* item[=].item[=].repeats = false
* item[=].item[=].prefix = "5.6"

// Control Measures and Treatments Section
* item[+].type = #group
* item[=].linkId = "controlMeasuresAndTreatments"
* item[=].text = "Control Measures and Treatments"
* item[=].required = false
* item[=].prefix = "6"

* item[=].item[0].type = #choice
* item[=].item[=].linkId = "controlMeasures"
* item[=].item[=].text = "Control Measures"
* item[=].item[=].required = false
* item[=].item[=].answerValueSet = "https://dhis2.org/fhir/ValueSet/control-measures-vs"
* item[=].item[=].repeats = true
* item[=].item[=].maxLength = 5
* item[=].item[=].prefix = "6.1"

* item[=].item[+].type = #choice
* item[=].item[=].linkId = "treatments"
* item[=].item[=].text = "Treatments"
* item[=].item[=].required = false
* item[=].item[=].answerValueSet = "https://dhis2.org/fhir/ValueSet/treatments-vs"
* item[=].item[=].prefix = "6.2"

// Comment
* item[+].type = #string
* item[=].linkId = "comment"
* item[=].text = "General Comments"
* item[=].required = false
