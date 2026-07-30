import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WirelessSensorNetworksComputerScienceCanonicalLaneLean

structure DataAggregationPackage where
  sensorNodes : Nat
  dataFusionProtocol : Prop
  energyConstraint : ℕ -> ℝ
  aggregationTree : Type
  sinkNode : ℕ
  aggregationFunction : List ℕ -> ℕ
  treeTopology : Prop
  energyConsumptionBound : ℕ -> ℕ

def DataAggregationClosed (D : DataAggregationPackage) : Prop :=
  D.treeTopology ∧ D.energyConstraint 0 > 0

end WirelessSensorNetworksComputerScienceCanonicalLaneLean
end HautevilleHouse