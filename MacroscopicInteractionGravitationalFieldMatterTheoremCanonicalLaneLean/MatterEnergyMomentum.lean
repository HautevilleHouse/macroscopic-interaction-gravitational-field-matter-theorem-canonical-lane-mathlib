import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MacroscopicInteractionGravitationalFieldMatterTheoremCanonicalLaneLean

structure MatterEnergyMomentumPackage where
  energyDensity : Prop
  pressureTensor : Prop
  matterFieldType : Type u
  couplingConstant : Prop
  conservationLaw : Prop
  energyConditions : Prop

structure MatterEnergyMomentumEvidence (M : MatterEnergyMomentumPackage) where
  energyDensityClosed : M.energyDensity
  pressureTensorClosed : M.pressureTensor
  couplingConstantClosed : M.couplingConstant
  conservationLawClosed : M.conservationLaw
  energyConditionsClosed : M.energyConditions

def MatterEnergyMomentumClosed (M : MatterEnergyMomentumPackage) : Prop :=
  M.energyDensity ∧ M.pressureTensor ∧ M.couplingConstant ∧ M.conservationLaw ∧ M.energyConditions

theorem matter_energy_momentum_closed_from_evidence (M : MatterEnergyMomentumPackage) (E : MatterEnergyMomentumEvidence M) : MatterEnergyMomentumClosed M := by
  exact And.intro E.energyDensityClosed
    (And.intro E.pressureTensorClosed
      (And.intro E.couplingConstantClosed
        (And.intro E.conservationLawClosed E.energyConditionsClosed)))

end MacroscopicInteractionGravitationalFieldMatterTheoremCanonicalLaneLean
end HautevilleHouse
