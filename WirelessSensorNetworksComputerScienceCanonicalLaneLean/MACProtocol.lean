import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WirelessSensorNetworksComputerScienceCanonicalLaneLean

structure MACProtocolParameters where
  slotDuration : ℕ
  contentionWindow : ℕ
  maxRetransmissions : ℕ
  slotDurationPositive : slotDuration > 0
  contentionWindowPositive : contentionWindow > 0
  maxRetransmissionsPositive : maxRetransmissions > 0

structure MACProtocolPackage where
  params : MACProtocolParameters
  throughputBound : Prop
  collisionProbabilityBound : Prop
  energyEfficiencyBound : Prop
  throughputBoundTerm : throughputBound
  collisionProbabilityBoundTerm : collisionProbabilityBound
  energyEfficiencyBoundTerm : energyEfficiencyBound

def MACProtocolClosed (M : MACProtocolPackage) : Prop :=
  M.throughputBound ∧ M.collisionProbabilityBound ∧ M.energyEfficiencyBound

theorem mac_protocol_closed_from_evidence (M : MACProtocolPackage) : MACProtocolClosed M :=
  let ⟨_, t, c, e, ht, hc, he⟩ := M
  And.intro ht (And.intro hc he)

end WirelessSensorNetworksComputerScienceCanonicalLaneLean
end HautevilleHouse