import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WirelessSensorNetworksComputerScienceCanonicalLaneLean

structure LocalizationPackage (T : SensorNetworkTopology) where
  anchorNodes : List Nat
  distanceEstimates : List (Nat × Nat × Float)
  localizationErrorBound : Float
  uniquenessCondition : Prop
  convergenceGuarantee : Prop
  uniquenessConditionTerm : uniquenessCondition
  convergenceGuaranteeTerm : convergenceGuarantee

structure LocalizationEvidence {T : SensorNetworkTopology} (L : LocalizationPackage T) where
  uniquenessConditionClosed : L.uniquenessCondition
  convergenceGuaranteeClosed : L.convergenceGuarantee

def LocalizationClosed {T : SensorNetworkTopology} (L : LocalizationPackage T) : Prop :=
  L.uniquenessCondition ∧ L.convergenceGuarantee

theorem localization_closed_from_evidence
    {T : SensorNetworkTopology} (L : LocalizationPackage T)
    (E : LocalizationEvidence L) : LocalizationClosed L := by
  exact And.intro E.uniquenessConditionClosed E.convergenceGuaranteeClosed

end WirelessSensorNetworksComputerScienceCanonicalLaneLean
end HautevilleHouse