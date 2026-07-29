import .GlobalHyperbolicityPackage

namespace HautevilleHouse
namespace MacroscopicInteractionGravitationalFieldMatterTheoremCanonicalLaneLean

structure EndpointClassificationPackage {F : FieldEquationsPackage}
    {I : InteractionKernelPackage F} {G : GlobalHyperbolicityPackage I} where
  asymptoticFlatness : Prop
  energyConditions : Prop
  noUnboundedGradients : Prop
  endpointIdentified : Prop
  uniquenessOfSolution : Prop

structure EndpointClassificationEvidence {F : FieldEquationsPackage}
    {I : InteractionKernelPackage F} {G : GlobalHyperbolicityPackage I}
    (E : EndpointClassificationPackage G) where
  asymptoticFlatnessClosed : E.asymptoticFlatness
  energyConditionsClosed : E.energyConditions
  noUnboundedGradientsClosed : E.noUnboundedGradients
  endpointIdentifiedClosed : E.endpointIdentified
  uniquenessOfSolutionClosed : E.uniquenessOfSolution

def EndpointClassificationClosed {F : FieldEquationsPackage}
    {I : InteractionKernelPackage F} {G : GlobalHyperbolicityPackage I}
    (E : EndpointClassificationPackage G) : Prop :=
  E.asymptoticFlatness ∧ E.energyConditions ∧ E.noUnboundedGradients ∧
  E.endpointIdentified ∧ E.uniquenessOfSolution

theorem endpoint_classification_closed_from_evidence
    {F : FieldEquationsPackage} {I : InteractionKernelPackage F}
    {G : GlobalHyperbolicityPackage I} (E : EndpointClassificationPackage G)
    (Ev : EndpointClassificationEvidence E) : EndpointClassificationClosed E := by
  exact And.intro Ev.asymptoticFlatnessClosed
    (And.intro Ev.energyConditionsClosed
      (And.intro Ev.noUnboundedGradientsClosed
        (And.intro Ev.endpointIdentifiedClosed Ev.uniquenessOfSolutionClosed)))

end MacroscopicInteractionGravitationalFieldMatterTheoremCanonicalLaneLean
end HautevilleHouse