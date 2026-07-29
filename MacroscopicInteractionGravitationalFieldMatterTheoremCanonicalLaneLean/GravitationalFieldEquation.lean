import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MacroscopicInteractionGravitationalFieldMatterTheoremCanonicalLaneLean

structure GravitationalFieldPackage where
  spacetimeManifold : Type u
  metricTensor : Type v
  ricciTensor : Type w
  scalarCurvature : Type x
  stressEnergyTensor : Type y
  cosmologicalConstant : Prop
  fieldEquationSatisfied : Prop
  smoothFourManifold : Prop
  metricSmooth : Prop

structure GravitationalFieldEvidence (G : GravitationalFieldPackage) where
  cosmologicalConstantClosed : G.cosmologicalConstant
  fieldEquationSatisfiedClosed : G.fieldEquationSatisfied
  smoothFourManifoldClosed : G.smoothFourManifold
  metricSmoothClosed : G.metricSmooth

def GravitationalFieldClosed (G : GravitationalFieldPackage) : Prop :=
  G.cosmologicalConstant ∧ G.fieldEquationSatisfied ∧ G.smoothFourManifold ∧ G.metricSmooth

theorem gravitational_field_closed_from_evidence (G : GravitationalFieldPackage) (E : GravitationalFieldEvidence G) : GravitationalFieldClosed G := by
  exact And.intro E.cosmologicalConstantClosed
    (And.intro E.fieldEquationSatisfiedClosed
      (And.intro E.smoothFourManifoldClosed E.metricSmoothClosed))

end MacroscopicInteractionGravitationalFieldMatterTheoremCanonicalLaneLean
end HautevilleHouse
