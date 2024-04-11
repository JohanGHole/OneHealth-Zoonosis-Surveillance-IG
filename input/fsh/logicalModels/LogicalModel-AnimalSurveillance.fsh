Logical: AnimalSurveillance
Title: "Logical Model - Animal Surveillance"
Parent: BackboneElement
Description: "Logical model describing attributes related to animal surveillance."
* animalClass             1..1                 code        "Animal Class"
* animalSpecies           0..1                 code        "Animal Species" 
* animalType              0..1                 code        "Animal Type"      
// Value Set bindings
* animalClass from AnimalClassVS (required)
* animalSpecies from AnimalSpeciesVS (required)
* animalType from AnimalTypeVS (required)