import MacroscopicInteractionGravitationalFieldMatterTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MacroscopicInteractionGravitationalFieldMatterTheoremCanonicalLaneLean

structure FieldEquationsPackage where
  metricType : Type u
  energyMomentumTensor : Type v
  einsteinEquations : Prop
  matterCoupling : Prop
  initialConditions : Prop

structure FieldEquationsEvidence (F : FieldEquationsPackage) where
  einsteinEquationsClosed : F.einsteinEquations
  matterCouplingClosed : F.matterCoupling
  initialConditionsClosed : F.initialConditions

def FieldEquationsClosed (F : FieldEquationsPackage) : Prop :=
  F.einsteinEquations ∧ F.matterCoupling ∧ F.initialConditions

theorem field_equations_closed_from_evidence (F : FieldEquationsPackage) (E : FieldEquationsEvidence F) :
    FieldEquationsClosed F := by
  exact And.intro E.einsteinEquationsClosed (And.intro E.matterCouplingClosed E.initialConditionsClosed)

end MacroscopicInteractionGravitationalFieldMatterTheoremCanonicalLaneLean
end HautevilleHouse