import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MacroscopicInteractionGravitationalFieldMatterTheoremCanonicalLaneLean

structure MatterEnergyPackage where
  matterFields : Type u
  energyMomentumTensor : Type v
  energyConditions : Prop
  dominantEnergyCondition : Prop
  weakEnergyCondition : Prop
  strongEnergyCondition : Prop
  conservationLaw : Prop
  couplingToGravity : Prop

structure MatterEnergyEvidence (M : MatterEnergyPackage) where
  energyConditionsClosed : M.energyConditions
  dominantEnergyConditionClosed : M.dominantEnergyCondition
  weakEnergyConditionClosed : M.weakEnergyCondition
  strongEnergyConditionClosed : M.strongEnergyCondition
  conservationLawClosed : M.conservationLaw
  couplingToGravityClosed : M.couplingToGravity

def MatterEnergyClosed (M : MatterEnergyPackage) : Prop :=
  M.energyConditions ∧ M.dominantEnergyCondition ∧ M.weakEnergyCondition ∧
  M.strongEnergyCondition ∧ M.conservationLaw ∧ M.couplingToGravity

theorem matter_energy_closed_from_evidence (M : MatterEnergyPackage)
    (E : MatterEnergyEvidence M) : MatterEnergyClosed M := by
  exact And.intro E.energyConditionsClosed
    (And.intro E.dominantEnergyConditionClosed
      (And.intro E.weakEnergyConditionClosed
        (And.intro E.strongEnergyConditionClosed
          (And.intro E.conservationLawClosed E.couplingToGravityClosed))))

end MacroscopicInteractionGravitationalFieldMatterTheoremCanonicalLaneLean
end HautevilleHouse
