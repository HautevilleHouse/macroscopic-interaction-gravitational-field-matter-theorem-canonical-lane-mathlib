import .InteractionKernelPackage

namespace HautevilleHouse
namespace MacroscopicInteractionGravitationalFieldMatterTheoremCanonicalLaneLean

structure GlobalHyperbolicityPackage {F : FieldEquationsPackage}
    {I : InteractionKernelPackage F} where
  cauchySurfaceExists : Prop
  globallyHyperbolicMetric : Prop
  wellposedness : Prop
  stabilityUnderPerturbation : Prop
  interactionCausal : Prop

structure GlobalHyperbolicityEvidence {F : FieldEquationsPackage}
    {I : InteractionKernelPackage F} (G : GlobalHyperbolicityPackage I) where
  cauchySurfaceExistsClosed : G.cauchySurfaceExists
  globallyHyperbolicMetricClosed : G.globallyHyperbolicMetric
  wellposednessClosed : G.wellposedness
  stabilityUnderPerturbationClosed : G.stabilityUnderPerturbation
  interactionCausalClosed : G.interactionCausal

def GlobalHyperbolicityClosed {F : FieldEquationsPackage}
    {I : InteractionKernelPackage F} (G : GlobalHyperbolicityPackage I) : Prop :=
  G.cauchySurfaceExists ∧ G.globallyHyperbolicMetric ∧ G.wellposedness ∧
  G.stabilityUnderPerturbation ∧ G.interactionCausal

theorem global_hyperbolicity_closed_from_evidence
    {F : FieldEquationsPackage} {I : InteractionKernelPackage F}
    (G : GlobalHyperbolicityPackage I) (E : GlobalHyperbolicityEvidence G) :
    GlobalHyperbolicityClosed G := by
  exact And.intro E.cauchySurfaceExistsClosed
    (And.intro E.globallyHyperbolicMetricClosed
      (And.intro E.wellposednessClosed
        (And.intro E.stabilityUnderPerturbationClosed E.interactionCausalClosed)))

end MacroscopicInteractionGravitationalFieldMatterTheoremCanonicalLaneLean
end HautevilleHouse