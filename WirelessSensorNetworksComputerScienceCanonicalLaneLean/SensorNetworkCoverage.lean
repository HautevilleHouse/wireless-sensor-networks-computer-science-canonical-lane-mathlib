import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WirelessSensorNetworksComputerScienceCanonicalLaneLean

structure CoverageModel where
  sensorRange : ℝ
  fieldArea : ℝ
  coverageProbability : ℝ
  redundancyFactor : ℕ

def coverageClosed (M : CoverageModel) : Prop :=
  M.coverageProbability > 0.9 ∧ M.redundancyFactor ≥ 1

theorem coverage_sufficient (M : CoverageModel) (h : M.coverageProbability > 0.9) (h' : M.redundancyFactor ≥ 1) : coverageClosed M := by
  exact And.intro h h'

end WirelessSensorNetworksComputerScienceCanonicalLaneLean
end HautevilleHouse