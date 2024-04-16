Logical: AnimalSurveillance
Title: "Logical Model - Animal Surveillance"
Parent: BackboneElement
Description: "Logical model describing attributes related to animal surveillance."
* reportingDate                      0..1                 date            "Reporting Date"
* epidemiology                       0..1                 BackboneElement "Epidemiology Information"
  * animalClass                      1..1                 code            "Animal Class"
  * animalSpecies                    0..1                 code            "Animal Species" 
  * animalType                       0..1                 code            "Animal Type"
  * animalsAtRisk                    0..1                 positiveInt     "Animals at Risk" 
  * animalsCases                     0..1                 positiveInt     "Animals Cases"
  * animalsDeaths                    0..1                 positiveInt     "Animals Deaths"
  * animalsDestroyed                 0..1                 positiveInt     "Animals Destroyed"
  * animalsSlaughtered               0..1                 positiveInt     "Animals Slaughtered"
  * vaccination                      0..1                 code            "If the animals are vaccinated. YES | NO | UNKNOWN"
  * vaccinated                       0..1                 positiveInt     "Number of vaccinated animals"
  * productionSystemOne              0..1                 code            "Production System One"
  * productionSystemTwo              0..1                 code            "Production System Two"
* clinicalSignsAndNecropsyLesions    0..1                 BackboneElement "Clinical signs and necropsy lesions"
  * clinicalSigns                    0..5                 code            "Clinical signs. Note: can be more than one"
  * necropsyLesions                  0..5                 code            "Necropsy lesions. Note: can be more than one"
* surveillanceTypeAndInfectionSource 0..1                 BackboneElement "Surveillance type and infection source. Surveillance and Infection source (select all that apply)"
  * surveillanceType                 0..1                 code            "Surveillance Type.  PASSIVE | ROUTINE | ACTIVE | PDS | CAHO | GDS | SENTINEL"
  * infectionSource                  0..5                 code            "Infection Source."
* diagnosis                          0..1                 BackboneElement "Diagnosis Information"
  * diseaseStatus                    0..1                 code            "Disease Status. CONFIRMED | DENIED | SUSPECTED" 
  * disease                          0..1                 code            "Disease"
  * diseaseSubTypes                  0..*                 code            "Disease Subtype(s)"
  * clade                            0..1                 code            "Clade"
  * diagnosticSource                 0..1                 code            "Diagnostic Source"
  * diagnosisBasis                   0..1                 code            "Diagnosis Basis. CLINICAL_SIGNS | NECROPSY_LESIONS | LABORATORY_TEST | OTHERS"
* controlMeasuresAndTreatments       0..1                 BackboneElement "Control measures and treatment (select all that apply)"
  * controlMeasures                  0..5                 code            "Control Measure. Note: can be more than one"
  * treatments                       0..5                 code            "Treatments. Note: can be more than one"
* comment                            0..1                 string          "Animal Surveillance Comments"


// Value Set bindings
* epidemiology.animalClass                                            from AnimalClassVS         (required)
* epidemiology.animalSpecies                                          from AnimalSpeciesVS       (required)
* epidemiology.animalType                                             from AnimalTypeVS          (required)
* epidemiology.vaccination                                            from YesNoUnknownVS        (required)
* epidemiology.productionSystemOne                                    from ProductionSystemOneVS (required)
* epidemiology.productionSystemTwo                                    from ProductionSystemTwoVS (required)
* clinicalSignsAndNecropsyLesions.clinicalSigns                       from ClinicalSignsVS       (required)
* clinicalSignsAndNecropsyLesions.necropsyLesions                     from NecropsyLesionsVS     (required)
* surveillanceTypeAndInfectionSource.surveillanceType                 from SurveillanceTypeVS    (required)
* surveillanceTypeAndInfectionSource.infectionSource                  from InfectionSourceVS     (required)      
* diagnosis.diseaseStatus                                             from DiseaseStatusVS       (required)
* diagnosis.disease                                                   from DiseasesVS            (required)
* diagnosis.diseaseSubTypes                                           from DiseaseSubtypeVS      (required)
* diagnosis.clade                                                     from CladeVS               (required)
* diagnosis.diagnosticSource                                          from DiagnosticSourceVS    (required)
* diagnosis.diagnosisBasis                                            from DiagnosisBasisVS      (required)
* controlMeasuresAndTreatments.controlMeasures                        from ControlMeasuresVS     (required) 
* controlMeasuresAndTreatments.treatments                             from TreatmentsVS          (required)

