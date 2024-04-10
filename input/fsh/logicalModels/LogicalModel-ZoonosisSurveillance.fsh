Logical: ZoonosisSurveillance
Title: "Logical Model - Zoonosis Surveillance"
Parent: BackboneElement
Description: "Logical model describing the structure of Zoonosis surveillance."
* generalInformation             0..1       BackboneElement       "General Information"
  * priorityStatus               0..1       string                "Priority Status"
  * identifier                   0..1       identifier            "Event ID"
  * observationDate              0..1       date                  "Observation Date"    
  * onsetDate                    0..1       date                  "Onset Date"
  * farmerName                   0..1       string                "Name of Farmer"    
  * contact                      0..1       ContactPoint          "Contact"   
  * url                          0..1       url                   "Public URL"  
  * comment                      0..1       string                "General Comment"
* location                       0..1       BackboneElement       "Location Information"
  * country                      0..1       code                  "Country"
  * locality                     0..1       string                "Locality"
  * adminLevel1                  0..1       code                  "Admin Level 1"
  * adminLevel2                  0..1       code                  "Admin Level 2"
  * localitySource               0..1       code                  "Locality Source"
  * localityQuality              0..1       code                  "Locality Quality"
  * eventCoordinates             0..1       string                "Event Coordinates" // need to be changed to coordinate
* animalSurveillance             0..*       AnimalSurveillance    "Logical Model for Animal Surveillance"
* laboratory                     0..*       Laboratory            "Logical Model for Laboratory Information"

// Bindings
* location.country          from http://terminology.hl7.org/ValueSet/v3-Country (required)
* location.adminLevel1      from RegionsVS                                      (required)
* location.adminLevel2      from DistrictsVS                                    (required)
* location.localitySource   from LocalitySourceVS                               (required)
* location.localityQuality  from LocalityQualityVS                              (required)