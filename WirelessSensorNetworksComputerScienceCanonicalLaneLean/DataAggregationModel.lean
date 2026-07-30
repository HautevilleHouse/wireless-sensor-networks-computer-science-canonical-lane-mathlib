import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WirelessSensorNetworksComputerScienceCanonicalLaneLean

structure DataAggregationPackage (T : SensorNetworkTopology) where
  aggregationTree : List (Nat × Nat)
  compressionRatio : Float
  endToEndLatency : Float
  dataIntegrityGuarantee : Prop
  routingOverhead : Prop
  dataIntegrityGuaranteeTerm : dataIntegrityGuarantee
  routingOverheadTerm : routingOverhead

structure AggregationEvidence {T : SensorNetworkTopology} (D : DataAggregationPackage T) where
  dataIntegrityGuaranteeClosed : D.dataIntegrityGuarantee
  routingOverheadClosed : D.routingOverhead

def AggregationClosed {T : SensorNetworkTopology} (D : DataAggregationPackage T) : Prop :=
  D.dataIntegrityGuarantee ∧ D.routingOverhead

theorem aggregation_closed_from_evidence
    {T : SensorNetworkTopology} (D : DataAggregationPackage T)
    (E : AggregationEvidence D) : AggregationClosed D := by
  exact And.intro E.dataIntegrityGuaranteeClosed E.routingOverheadClosed

end WirelessSensorNetworksComputerScienceCanonicalLaneLean
end HautevilleHouse