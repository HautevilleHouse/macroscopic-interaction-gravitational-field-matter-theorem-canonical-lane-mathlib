import MacroscopicInteractionGravitationalFieldMatterTheoremCanonicalLaneLean.MatterGravitationCoupling

namespace HautevilleHouse
namespace MacroscopicInteractionGravitationalFieldMatterTheoremCanonicalLaneLean

structure EndgameAnalysisPackage {F : FieldEquationsPackage} {C : MatterGravitationCouplingPackage F} where
  macroscopicClosure : Prop
  interactionStability : Prop
  endpointCharacterization : Prop

structure EndgameAnalysisEvidence {F : FieldEquationsPackage} {C : MatterGravitationCouplingPackage F}
    (E : EndgameAnalysisPackage C) where
  macroscopicClosureClosed : E.macroscopicClosure
  interactionStabilityClosed : E.interactionStability
  endpointCharacterizationClosed : E.endpointCharacterization

def EndgameAnalysisClosed {F : FieldEquationsPackage} {C : MatterGravitationCouplingPackage F}
    (E : EndgameAnalysisPackage C) : Prop :=
  E.macroscopicClosure ∧ E.interactionStability ∧ E.endpointCharacterization

theorem endgame_analysis_closed_from_evidence
    {F : FieldEquationsPackage} {C : MatterGravitationCouplingPackage F}
    (Epg : EndgameAnalysisPackage C) (Ev : EndgameAnalysisEvidence Epg) :
    EndgameAnalysisClosed Epg := by
  exact And.intro Ev.macroscopicClosureClosed
    (And.intro Ev.interactionStabilityClosed Ev.endpointCharacterizationClosed)

end MacroscopicInteractionGravitationalFieldMatterTheoremCanonicalLaneLean
end HautevilleHouse