import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WirelessSensorNetworksComputerScienceCanonicalLaneLean

structure RoutingProtocol where
  name : String
  nextHop : Nat → Nat
  costVector : Nat → ℝ
  pathIntegrity : Prop
  loopFreedom : Prop

structure RoutingEvidence (R : RoutingProtocol) where
  pathIntegrityClosed : R.pathIntegrity
  loopFreedomClosed : R.loopFreedom

def RoutingClosed (R : RoutingProtocol) : Prop :=
  R.pathIntegrity ∧ R.loopFreedom

theorem routing_closed_from_evidence (R : RoutingProtocol) (E : RoutingEvidence R) : RoutingClosed R :=
by
  exact And.intro E.pathIntegrityClosed E.loopFreedomClosed

end WirelessSensorNetworksComputerScienceCanonicalLaneLean
end HautevilleHouse