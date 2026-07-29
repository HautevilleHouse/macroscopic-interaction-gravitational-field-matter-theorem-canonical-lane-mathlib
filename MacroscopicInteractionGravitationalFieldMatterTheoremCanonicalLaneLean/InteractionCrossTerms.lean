import MacroscopicInteractionGravitationalFieldMatterTheorem.EinsteinFieldEquations

namespace HautevilleHouse
namespace MacroscopicInteractionGravitationalFieldMatterTheorem

structure InteractionCrossTermsPackage where
  matterFieldLagrangian : Prop
  couplingTerm : Prop
  interactionCurrent : Prop
  energyExchange : Prop
  geodesicDeviation : Prop

structure InteractionCrossTermsEvidence (P : InteractionCrossTermsPackage) where
  matterFieldLagrangianClosed : P.matterFieldLagrangian
  couplingTermClosed : P.couplingTerm
  interactionCurrentClosed : P.interactionCurrent
  energyExchangeClosed : P.energyExchange
  geodesicDeviationClosed : P.geodesicDeviation

def InteractionCrossTermsClosed (P : InteractionCrossTermsPackage) : Prop :=
  P.matterFieldLagrangian ∧ P.couplingTerm ∧ P.interactionCurrent ∧ P.energyExchange ∧ P.geodesicDeviation

theorem interaction_cross_terms_closed_from_evidence (P : InteractionCrossTermsPackage) (E : InteractionCrossTermsEvidence P) : InteractionCrossTermsClosed P := by
  exact And.intro E.matterFieldLagrangianClosed (And.intro E.couplingTermClosed (And.intro E.interactionCurrentClosed (And.intro E.energyExchangeClosed E.geodesicDeviationClosed)))

end MacroscopicInteractionGravitationalFieldMatterTheorem
end HautevilleHouse