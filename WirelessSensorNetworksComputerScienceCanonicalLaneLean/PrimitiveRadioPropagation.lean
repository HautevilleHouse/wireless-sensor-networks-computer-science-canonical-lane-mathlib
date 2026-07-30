import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WirelessSensorNetworksComputerScienceCanonicalLaneLean

structure PrimitiveRadioPropagationModel where
  pathLossExponent : ℝ
  fadingMargin : ℝ
  interferenceFloor : ℝ
  pathLossExponentPositive : pathLossExponent > 0
  fadingMarginNonnegative : fadingMargin ≥ 0
  interferenceFloorNonnegative : interferenceFloor ≥ 0

structure PrimitiveRadioPropagationPackage where
  model : PrimitiveRadioPropagationModel
  coverageRegionCovered : Prop
  linkBudgetAdmissible : Prop
  coverageRegionCoveredTerm : coverageRegionCovered
  linkBudgetAdmissibleTerm : linkBudgetAdmissible

def PrimitiveRadioPropagationClosed (P : PrimitiveRadioPropagationPackage) : Prop :=
  P.coverageRegionCovered ∧ P.linkBudgetAdmissible

theorem primitive_radio_propagation_closed_from_evidence (P : PrimitiveRadioPropagationPackage) : PrimitiveRadioPropagationClosed P :=
  And.intro P.coverageRegionCoveredTerm P.linkBudgetAdmissibleTerm

end WirelessSensorNetworksComputerScienceCanonicalLaneLean
end HautevilleHouse