Logical: Laboratory
Title: "Logical Model - Laboratory"
Parent: BackboneElement
Description: "Logical model describing laboratory information, including sample identification and test details."
* reportingDate                  0..1            date                   "Reporting Date"
* laboratory                     0..1            code                   "Laboratory"
* otherLaboratory                0..1            string                 "Other Laboratory"
* labDisease                     0..1            code                   "Lab Disease"
* affectedSpecie                 0..*            code                   "Affected specie. Note: can be more than one"
* samplingDate                   0..1            date                   "Sampling Date"
* sampleType                     0..1            code                   "Sample Type"
* testType                       0..1            code                   "Test Type"                      
* resultDate                     0..1            date                   "Result Date"
* testResult                     0..1            code                   "Test Result"

// Value Set Binding
* laboratory     from LaboratoryVS    (required)
* labDisease     from LabDiseasesVS   (required)
* affectedSpecie from AnimalSpeciesVS (required)
* sampleType     from SampleTypeVS    (required)
* testType       from TestTypeVS      (required)
* testResult     from TestResultVS    (required)