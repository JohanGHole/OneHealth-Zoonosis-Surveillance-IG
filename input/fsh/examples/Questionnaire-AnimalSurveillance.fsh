Instance: AnimalSurveillanceQuestionnaire
InstanceOf: Questionnaire
Usage: #example
Title: "Animal Surveillance Questionnaire"
Description: "A questionnaire instance adapted for capturing detailed animal surveillance data according to the specified logical model."

* status = #draft
* name = "AnimalSurveillanceQuestionnaire"
* date = "2024-04-16"
* experimental = true
* title = "Animal Surveillance Questionnaire"
* publisher = "OneHealth / DHIS2"
// Reporting Date
* item[0].type = #date
* item[=].linkId = "reportingDate"
* item[=].text = "Reporting Date"

// Epidemiology Information Section
* item[+].type = #group
* item[=].linkId = "epidemiologyInformation"
* item[=].text = "Epidemiology Information"

* item[=].item[0].type = #choice
* item[=].item[=].linkId = "animalClass"
* item[=].item[=].text = "Animal Class"
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://dhis2.org/fhir/ValueSet/animal-class-vs"

* item[=].item[+].type = #choice
* item[=].item[=].linkId = "animalSpecies"
* item[=].item[=].text = "Animal Species"
* item[=].item[=].required = false
* item[=].item[=].answerValueSet = "https://dhis2.org/fhir/ValueSet/animal-species-vs"

* item[=].item[+].type = #choice
* item[=].item[=].linkId = "animalType"
* item[=].item[=].text = "Animal Type"
* item[=].item[=].required = false
* item[=].item[=].answerValueSet = "https://dhis2.org/fhir/ValueSet/animal-type-vs"
