import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WirelessSensorNetworksComputerScienceCanonicalLaneLean

structure SecurityModel where
  threatType : String
  compromisedNodes : List Nat
  detectionRate : ℝ
  falseAlarmRate : ℝ
  mitigationActive : Bool

structure SecurityEvidence (S : SecurityModel) where
  detectionRateNonneg : S.detectionRate ≥ 0
  detectionRateLeOne : S.detectionRate ≤ 1
  falseAlarmRateNonneg : S.falseAlarmRate ≥ 0
  falseAlarmRateLeOne : S.falseAlarmRate ≤ 1
  mitigationOn : S.mitigationActive = true

def SecurityClosed (S : SecurityModel) : Prop :=
  S.detectionRate ≥ 0 ∧ S.detectionRate ≤ 1 ∧
  S.falseAlarmRate ≥ 0 ∧ S.falseAlarmRate ≤ 1 ∧
  S.mitigationActive = true

theorem security_closed_from_evidence (S : SecurityModel) (E : SecurityEvidence S) : SecurityClosed S :=
by
  exact And.intro E.detectionRateNonneg (And.intro E.detectionRateLeOne (And.intro E.falseAlarmRateNonneg (And.intro E.falseAlarmRateLeOne E.mitigationOn)))

end WirelessSensorNetworksComputerScienceCanonicalLaneLean
end HautevilleHouse