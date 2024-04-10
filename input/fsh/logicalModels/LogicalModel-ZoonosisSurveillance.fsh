Logical: ZoonosisSurveillance
Title: "Zoonosis Surveillance"
Parent: BackboneElement
Description: "Logical model describing the structure of Zoonosis surveillance."
* priorityStatus               0..*       string                "Priority Status"
* identifier                   0..*       identifier            "Event ID"
* observationDate              0..*       date                  "Observation Date"    
* onsetDate                    0..*       date                  "Onset Date"
* farmerName                   0..*       string                "Name of Farmer"    
* contact                      0..*       ContactPoint          "Contact"   
* url                          0..*       url                   "Public URL"  
* comment                      0..*       string                "General Comment"
* country                      0..*       string                "Country" // need valueSet!
* locality                     0..*       string                "Locality"
* adminLevel1                  0..*       string                "Admin Level 1" // need valueSet Regions
* adminLevel2                  0..*       string                "Admin Level 2" // need valueSet districts
* localitySource               0..*       string                "Locality Source" // need valueset locality source
* localityQuality              0..*       string                "Locality Quality" // need valueSet locality quality
* eventCoordinates             0..*       string                "Event Coordinates" // need to be changed to coordinate

