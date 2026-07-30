import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WirelessSensorNetworksComputerScienceCanonicalLaneLean

structure LocalizationPackage where
  anchorNodes : List ℕ
  unknownNode : ℕ
  distanceEstimates : ℕ -> ℕ -> ℝ
  trilaterationAlgorithm : Type
  positionEstimate : ℕ × ℕ
  errorBound : ℝ
  anchorPositionsKnown : Prop
  distanceEstimatesConsistent : Prop

def LocalizationClosed (L : LocalizationPackage) : Prop :=
  L.anchorPositionsKnown ∧ L.distanceEstimatesConsistent

end WirelessSensorNetworksComputerScienceCanonicalLaneLean
end HautevilleHouse