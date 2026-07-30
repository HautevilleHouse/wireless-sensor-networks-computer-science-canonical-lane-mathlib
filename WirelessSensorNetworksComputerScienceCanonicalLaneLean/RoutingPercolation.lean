import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WirelessSensorNetworksComputerScienceCanonicalLaneLean

structure RoutingPercolationPackage where
  networkGraph : Type u
  nodeDensity : ℕ
  percolationThreshold : ℕ
  multihopConnectivity : Prop
  multihopConnectivity_term : multihopConnectivity

structure RoutingPercolationEvidence (R : RoutingPercolationPackage) where
  multihopConnectivity_closed : R.multihopConnectivity
  densitySufficient : R.nodeDensity ≥ R.percolationThreshold

def RoutingPercolationClosed (R : RoutingPercolationPackage) : Prop :=
  R.multihopConnectivity ∧ (R.nodeDensity ≥ R.percolationThreshold)

theorem routing_percolation_closed_from_evidence (R : RoutingPercolationPackage) (E : RoutingPercolationEvidence R) :
    RoutingPercolationClosed R := by
  exact And.intro E.multihopConnectivity_closed E.densitySufficient

end WirelessSensorNetworksComputerScienceCanonicalLaneLean
end HautevilleHouse