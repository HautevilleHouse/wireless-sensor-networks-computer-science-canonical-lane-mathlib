import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WirelessSensorNetworksComputerScienceCanonicalLaneLean

structure AggregationProtocol where
  aggregationFunction : List ℝ → ℝ
  inputData : List ℝ
  output : ℝ
  consistencyProperty : Prop

structure AggregationEvidence (A : AggregationProtocol) where
  inputNonempty : A.inputData ≠ []
  outputInRange : A.output ≥ 0 ∧ A.output ≤ 100
  consistencyClosed : A.consistencyProperty

def AggregationClosed (A : AggregationProtocol) : Prop :=
  A.inputData ≠ [] ∧ (A.output ≥ 0 ∧ A.output ≤ 100) ∧ A.consistencyProperty

theorem aggregation_closed_from_evidence (A : AggregationProtocol) (E : AggregationEvidence A) : AggregationClosed A :=
by
  exact And.intro E.inputNonempty (And.intro (And.intro (E.outputInRange.1) (E.outputInRange.2)) E.consistencyClosed)

end WirelessSensorNetworksComputerScienceCanonicalLaneLean
end HautevilleHouse