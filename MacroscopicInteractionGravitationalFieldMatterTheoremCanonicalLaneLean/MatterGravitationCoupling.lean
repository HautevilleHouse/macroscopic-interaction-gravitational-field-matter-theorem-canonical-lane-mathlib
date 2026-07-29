import MacroscopicInteractionGravitationalFieldMatterTheoremCanonicalLaneLean.FieldEquations

namespace HautevilleHouse
namespace MacroscopicInteractionGravitationalFieldMatterTheoremCanonicalLaneLean

structure MatterGravitationCouplingPackage {F : FieldEquationsPackage} where
  matterEvolution : Prop
  gravitationalResponse : Prop
  conservationLaws : Prop

structure MatterGravitationCouplingEvidence {F : FieldEquationsPackage} (C : MatterGravitationCouplingPackage F) where
  matterEvolutionClosed : C.matterEvolution
  gravitationalResponseClosed : C.gravitationalResponse
  conservationLawsClosed : C.conservationLaws

def MatterGravitationCouplingClosed {F : FieldEquationsPackage} (C : MatterGravitationCouplingPackage F) : Prop :=
  C.matterEvolution ∧ C.gravitationalResponse ∧ C.conservationLaws

theorem matter_gravitation_coupling_closed_from_evidence
    {F : FieldEquationsPackage} (C : MatterGravitationCouplingPackage F)
    (E : MatterGravitationCouplingEvidence C) : MatterGravitationCouplingClosed C := by
  exact And.intro E.matterEvolutionClosed
    (And.intro E.gravitationalResponseClosed E.conservationLawsClosed)

end MacroscopicInteractionGravitationalFieldMatterTheoremCanonicalLaneLean
end HautevilleHouse