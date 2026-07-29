import MacroscopicInteractionGravitationalFieldMatterTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MacroscopicInteractionGravitationalFieldMatterTheoremCanonicalLaneLean

structure MacroscopicInteractionGravitationalFieldMatterPackage where
  spacetimeManifold : Type u
  metric : Type v
  stressEnergyTensor : Type w
  matterFields : List Type
  gravitationalConstant : ℝ
  interactionLagrangian : Prop
  fieldEquations : Prop

structure MacroscopicInteractionGravitationalFieldMatterEvidence (P : MacroscopicInteractionGravitationalFieldMatterPackage) where
  interactionLagrangianClosed : P.interactionLagrangian
  fieldEquationsClosed : P.fieldEquations

def MacroscopicInteractionGravitationalFieldMatterClosed (P : MacroscopicInteractionGravitationalFieldMatterPackage) : Prop :=
  P.interactionLagrangian ∧ P.fieldEquations

theorem macroscopic_interaction_gravitational_field_matter_closed_from_evidence
    (P : MacroscopicInteractionGravitationalFieldMatterPackage)
    (E : MacroscopicInteractionGravitationalFieldMatterEvidence P) :
    MacroscopicInteractionGravitationalFieldMatterClosed P := by
  exact And.intro E.interactionLagrangianClosed E.fieldEquationsClosed

end MacroscopicInteractionGravitationalFieldMatterTheoremCanonicalLaneLean
end HautevilleHouse