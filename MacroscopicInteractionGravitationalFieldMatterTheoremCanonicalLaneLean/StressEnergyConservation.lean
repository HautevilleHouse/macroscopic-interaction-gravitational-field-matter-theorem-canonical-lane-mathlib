import MacroscopicInteractionGravitationalFieldMatterTheorem.MacroscopicInteractionAdmissibleClass

namespace HautevilleHouse
namespace MacroscopicInteractionGravitationalFieldMatterTheorem

structure StressEnergyConservationPackage where
  energyMomentumTensor : Prop
  covariantConservation : Prop
  positivityConditions : Prop
  dominantEnergyCondition : Prop
  traceCondition : Prop

structure StressEnergyConservationEvidence (P : StressEnergyConservationPackage) where
  energyMomentumTensorClosed : P.energyMomentumTensor
  covariantConservationClosed : P.covariantConservation
  positivityConditionsClosed : P.positivityConditions
  dominantEnergyConditionClosed : P.dominantEnergyCondition
  traceConditionClosed : P.traceCondition

def StressEnergyConservationClosed (P : StressEnergyConservationPackage) : Prop :=
  P.energyMomentumTensor ∧ P.covariantConservation ∧ P.positivityConditions ∧ P.dominantEnergyCondition ∧ P.traceCondition

theorem stress_energy_conservation_closed_from_evidence (P : StressEnergyConservationPackage) (E : StressEnergyConservationEvidence P) : StressEnergyConservationClosed P := by
  exact And.intro E.energyMomentumTensorClosed (And.intro E.covariantConservationClosed (And.intro E.positivityConditionsClosed (And.intro E.dominantEnergyConditionClosed E.traceConditionClosed)))

end MacroscopicInteractionGravitationalFieldMatterTheorem
end HautevilleHouse