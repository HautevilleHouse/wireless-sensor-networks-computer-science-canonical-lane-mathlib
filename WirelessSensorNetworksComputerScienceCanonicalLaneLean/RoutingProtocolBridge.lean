import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WirelessSensorNetworksComputerScienceCanonicalLaneLean

structure RoutingProtocol where
  protocolName : String
  isEnergyEfficient : Prop
  isScalable : Prop
  packetDeliveryRatio : ℝ
  controlOverhead : ℝ

def RoutingProtocolClosed (R : RoutingProtocol) : Prop :=
  R.isEnergyEfficient ∧ R.isScalable ∧ R.packetDeliveryRatio > 0.8 ∧ R.controlOverhead < 0.2

theorem routing_protocol_closed_default (R : RoutingProtocol) (h1 : R.isEnergyEfficient) (h2 : R.isScalable) (h3 : R.packetDeliveryRatio > 0.8) (h4 : R.controlOverhead < 0.2) : RoutingProtocolClosed R := by
  exact And.intro h1 (And.intro h2 (And.intro h3 h4))

end WirelessSensorNetworksComputerScienceCanonicalLaneLean
end HautevilleHouse