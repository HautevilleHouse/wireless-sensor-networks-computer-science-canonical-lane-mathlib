import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WirelessSensorNetworksComputerScienceCanonicalLaneLean

structure LocalizationAnchor where
  positionKnown : Prop
  rangeMeasurementAvailable : Prop
  anchorReference : Prop

def anchorReliability (a : LocalizationAnchor) : Prop :=
  a.positionKnown ∨ a.rangeMeasurementAvailable

structure LocalizationProtocolPackage where
  anchors : List LocalizationAnchor
  multilaterationConvergence : Prop
  positionUncertaintyBound : Prop
  multilaterationConvergenceTerm : multilaterationConvergence
  positionUncertaintyBoundTerm : positionUncertaintyBound

def LocalizationProtocolClosed (L : LocalizationProtocolPackage) : Prop :=
  L.multilaterationConvergence ∧ L.positionUncertaintyBound

theorem localization_protocol_closed_from_evidence (L : LocalizationProtocolPackage) : LocalizationProtocolClosed L :=
  And.intro L.multilaterationConvergenceTerm L.positionUncertaintyBoundTerm

end WirelessSensorNetworksComputerScienceCanonicalLaneLean
end HautevilleHouse