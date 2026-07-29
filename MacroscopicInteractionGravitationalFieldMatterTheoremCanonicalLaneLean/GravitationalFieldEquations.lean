import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MacroscopicInteractionGravitationalFieldMatterTheoremCanonicalLaneLean

structure GravitationalFieldPackage where
  spacetimeManifold : Type u
  metricTensor : Type v
  stressEnergyMomentum : Type w
  einsteinTensor : Type x
  cosmologicalConstant : Prop
  fieldEquationSatisfied : Prop
  metricSmooth : Prop
  stressEnergyConserved : Prop
  compatibilityCondition : Prop

structure GravitationalFieldEvidence (G : GravitationalFieldPackage) where
  cosmologicalConstantClosed : G.cosmologicalConstant
  fieldEquationSatisfiedClosed : G.fieldEquationSatisfied
  metricSmoothClosed : G.metricSmooth
  stressEnergyConservedClosed : G.stressEnergyConserved
  compatibilityConditionClosed : G.compatibilityCondition

def GravitationalFieldClosed (G : GravitationalFieldPackage) : Prop :=
  G.cosmologicalConstant ∧ G.fieldEquationSatisfied ∧ G.metricSmooth ∧
  G.stressEnergyConserved ∧ G.compatibilityCondition

theorem gravitational_field_closed_from_evidence (G : GravitationalFieldPackage)
    (E : GravitationalFieldEvidence G) : GravitationalFieldClosed G := by
  exact And.intro E.cosmologicalConstantClosed
    (And.intro E.fieldEquationSatisfiedClosed
      (And.intro E.metricSmoothClosed
        (And.intro E.stressEnergyConservedClosed E.compatibilityConditionClosed)))

end MacroscopicInteractionGravitationalFieldMatterTheoremCanonicalLaneLean
end HautevilleHouse
