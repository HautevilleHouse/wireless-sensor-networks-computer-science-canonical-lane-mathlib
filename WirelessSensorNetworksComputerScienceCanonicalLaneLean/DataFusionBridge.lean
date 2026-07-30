import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WirelessSensorNetworksComputerScienceCanonicalLaneLean

structure DataFusionProtocol where
  fusionMethod : String
  isLossy : Prop
  compressionRatio : ℝ
  dataAccuracy : ℝ
  bandwidthSaving : ℝ

def DataFusionProtocolClosed (D : DataFusionProtocol) : Prop :=
  (¬ D.isLossy) ∨ (D.dataAccuracy > 0.9 ∧ D.compressionRatio > 1.5)

theorem data_fusion_protocol_closed_default (D : DataFusionProtocol) (h : ¬ D.isLossy) : DataFusionProtocolClosed D := by
  exact Or.inl h

theorem data_fusion_protocol_closed_lossy_acceptable (D : DataFusionProtocol) (h1 : D.dataAccuracy > 0.9) (h2 : D.compressionRatio > 1.5) : DataFusionProtocolClosed D := by
  exact Or.inr (And.intro h1 h2)

end WirelessSensorNetworksComputerScienceCanonicalLaneLean
end HautevilleHouse