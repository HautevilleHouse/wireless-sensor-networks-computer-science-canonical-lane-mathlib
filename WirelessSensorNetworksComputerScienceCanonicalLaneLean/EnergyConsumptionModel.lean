import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WirelessSensorNetworksComputerScienceCanonicalLaneLean

structure EnergyModel where
  transmissionEnergy : ℝ
  receptionEnergy : ℝ
  idleEnergy : ℝ
  sleepEnergy : ℝ
  batteryCapacity : ℝ
  currentEnergy : ℝ

structure EnergyEvidence (E : EnergyModel) where
  positiveTransmission : E.transmissionEnergy > 0
  positiveReception : E.receptionEnergy > 0
  positiveIdle : E.idleEnergy ≥ 0
  positiveSleep : E.sleepEnergy ≥ 0
  batteryPositive : E.batteryCapacity > 0
  initialCharge : E.currentEnergy = E.batteryCapacity

def EnergyClosed (E : EnergyModel) : Prop :=
  E.transmissionEnergy > 0 ∧ E.receptionEnergy > 0 ∧
  E.idleEnergy ≥ 0 ∧ E.sleepEnergy ≥ 0 ∧
  E.batteryCapacity > 0 ∧ E.currentEnergy = E.batteryCapacity

theorem energy_closed_from_evidence (E : EnergyModel) (Ev : EnergyEvidence E) : EnergyClosed E :=
by
  exact And.intro Ev.positiveTransmission (And.intro Ev.positiveReception (And.intro Ev.positiveIdle (And.intro Ev.positiveSleep (And.intro Ev.batteryPositive Ev.initialCharge))))

end WirelessSensorNetworksComputerScienceCanonicalLaneLean
end HautevilleHouse