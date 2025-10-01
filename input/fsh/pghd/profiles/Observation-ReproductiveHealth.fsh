Profile: PGHDReproductiveHealth
Parent: Observation
Id: pghd-reproductive-health
Title: "PGHD ReproductiveHealth Profile"
Description: """
This profile defines how to represent ReproductiveHealth.  
このプロファイルは、周期記録に関する情報を表す方法を定義します。
"""
* insert ProfileRules
* insert ObservationRules
* . ^short = "PGHD Reproductive Health Profile (周期記録 プロファイル)"

* category[ObservationCategory].coding.code = #social-history (exactly)
* code.coding[PGHDCode] from ObservationReproductiveHealth (required)
* code.coding[PGHDCode].system = $CodeSystemObservationPGHDCodes (exactly)
* value[x] only Quantity
* bodySite.coding ^slicing.discriminator[0].type = #value
* bodySite.coding ^slicing.discriminator[=].path = "system"
* bodySite.coding ^slicing.ordered = false
* bodySite.coding ^slicing.rules = #open
* bodySite.coding contains BodyTemperatureMeasurementLocation 0..1 and LOINCCode 0..1
* bodySite.coding[BodyTemperatureMeasurementLocation] from BodyTemperatureMeasurementLocationValueset (required)
* bodySite.coding[BodyTemperatureMeasurementLocation].system = $CodeSystemBodyTemperatureMeasurementLocation (exactly)
