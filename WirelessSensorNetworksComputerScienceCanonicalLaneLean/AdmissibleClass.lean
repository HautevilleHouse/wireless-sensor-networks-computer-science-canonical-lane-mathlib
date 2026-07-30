import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WirelessSensorNetworksComputerScienceCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure SensorNetworkAdmittedObject where
  deployment : Type u
  topology : TopologicalSpace deployment
  connectivityEstablished : Prop
  coverageGuaranteed : (
    ∀ (point : deployment),
      ∃ (sensor : Unit), True
  )
  conclusion : coverageGuaranteed

structure AdmissibleClass where
  object : SensorNetworkAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end WirelessSensorNetworksComputerScienceCanonicalLaneLean
end HautevilleHouse