import canonicalLaneMathlib.AdmissibleClass
import WirelessSensorNetworksComputerScienceCanonicalLaneLean.BridgeLemmas
import WirelessSensorNetworksComputerScienceCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace WirelessSensorNetworksComputerScienceCanonicalLaneLean

def ConstrainedWSNClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_wsn_endgame (A : AdmissibleClass) :
    ConstrainedWSNClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end WirelessSensorNetworksComputerScienceCanonicalLaneLean
end HautevilleHouse