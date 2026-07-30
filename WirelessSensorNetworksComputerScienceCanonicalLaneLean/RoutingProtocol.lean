import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WirelessSensorNetworksComputerScienceCanonicalLaneLean

structure RoutingProtocolPackage where
  graph : Type
  sourceNode : ℕ
  destinationNode : ℕ
  routingTable : ℕ -> ℕ
  pathLength : ℕ
  loopFreedomProof : Prop
  energyEfficiency : ℕ -> ℕ
  pathIntegrity : Prop
  energyEfficientPath : Prop

def RoutingProtocolClosed (R : RoutingProtocolPackage) : Prop :=
  R.loopFreedomProof ∧ R.pathIntegrity ∧ R.energyEfficientPath

end WirelessSensorNetworksComputerScienceCanonicalLaneLean
end HautevilleHouse