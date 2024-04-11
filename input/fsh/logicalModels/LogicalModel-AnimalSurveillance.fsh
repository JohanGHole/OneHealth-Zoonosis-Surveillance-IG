Logical: AnimalSurveillance
Title: "Logical Model - Animal Surveillance"
Parent: BackboneElement
Description: "Logical model describing attributes related to animal surveillance."
* animalClass             1..1                 code        "Animal Class"
* animalSpecies           0..1                 code        "Animal Species" 
* animalType              0..1                 code        "Animal Type"
* animalsAtRisk           0..1                 Count       "Animals at Risk" 
* animalsCases            0..1                 Count       "Animals Cases"
* animalsDeaths           0..1                 Count       "Animals Deaths"
* animalsDestroyed        0..1                 Count       "Animals Destroyed"
* animalsSlaughtered      0..1                 Count       "Animals Slaughtered"
* vaccination             0..1                 code        "If the animals are vaccinated. YES | NO | UNKNOWN"
* vaccinated              0..1                 Count       "Number of vaccinated animals"
* productionSystemOne     0..1                 code        "Production System One"
* productionSystemTwo     0..1                 code        "Production System Two"
* clinicalSigns           0..5                 code        "Clinical signs. Note: can be more than one"
* necropsyLesions         0..5                 code        "Necropsy lesions. Note: can be more than one"
* surveillanceType        0..1                 code        "Surveillance Type.  PASSIVE | ROUTINE | ACTIVE | PDS | CAHO | GDS | SENTINEL"
* infectionSource         0..5                 code        "Infection Source"
* diseaseStatus           0..1                 code        "Disease Status. CONFIRMED | DENIED | SUSPECTED" 
* disease                 0..1                 code        "Disease"
* diseaseSubTypes         0..*                 code        "Disease Subtype(s)"
* clade                   0..1                 code        "Clade"
* diagnosticSource        0..1                 code        "Diagnostic Source"
* diagnosisBasis          0..1                 code        "Diagnosis Basis. CLINICAL_SIGNS | NECROPSY_LESIONS | LABORATORY_TEST | OTHERS"
* controlMeasures         0..5                 code        "Control Measure. Note: can be more than one"
* treatments              0..5                 code        "Treatments. Note: can be more than one"
* comment                 0..1                 string      "Animal Surveillance Comments"


// Value Set bindings
* animalClass         from AnimalClassVS         (required)
* animalSpecies       from AnimalSpeciesVS       (required)
* animalType          from AnimalTypeVS          (required)
* vaccination         from YesNoUnknownVS        (required)
* productionSystemOne from ProductionSystemOneVS (required)
* productionSystemTwo from ProductionSystemTwoVS (required)
* clinicalSigns       from ClinicalSignsVS       (required)
* necropsyLesions     from NecropsyLesionsVS     (required)
* surveillanceType    from SurveillanceTypeVS    (required)
* diseaseStatus       from DiseaseStatusVS       (required)
* disease             from DiseasesVS            (required)
* diseaseSubTypes     from DiseaseSubtypeVS      (required)
* clade               from CladeVS               (required)
* diagnosticSource    from DiagnosticSourceVS    (required)
* diagnosisBasis      from DiagnosisBasisVS      (required)
* controlMeasures     from ControlMeasuresVS     (required) 
* treatments          from TreatmentsVS          (required)

