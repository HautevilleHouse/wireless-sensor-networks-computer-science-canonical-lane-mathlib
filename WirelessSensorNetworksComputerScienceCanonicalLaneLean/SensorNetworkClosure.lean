import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WirelessSensorNetworksComputerScienceCanonicalLaneLean

structure SensorNetwork where
  nodes : Type u
  communications : Type v
  coverageArea : Type w
  isConnected : Prop
  hasSensingCapability : Prop
  energyResource : Nat
  nodeCount : Nat
  sinkNodes : List nodes

def SensorNetworkClosed (N : SensorNetwork) : Prop :=
  N.isConnected ∧ N.hasSensingCapability

end WirelessSensorNetworksComputerScienceCanonicalLaneLean
end HautevilleHouse