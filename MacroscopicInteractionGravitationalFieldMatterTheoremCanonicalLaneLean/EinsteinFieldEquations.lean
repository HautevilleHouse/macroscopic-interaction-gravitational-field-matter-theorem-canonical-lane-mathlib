import MacroscopicInteractionGravitationalFieldMatterTheoremCanonicalLaneLean.MacroscopicInteractionGravitationalFieldMatter

namespace HautevilleHouse
namespace MacroscopicInteractionGravitationalFieldMatterTheoremCanonicalLaneLean

structure EinsteinFieldEquationsPackage {M : Type u} [MetricSpace M] where
  ricciTensor : M → (Type v)
  scalarCurvature : M → ℝ
  stressEnergyTensor : M → (Type w)
  cosmologicalConstant : ℝ
  gravitationalConstant : ℝ
  fieldEquation : Prop

structure EinsteinFieldEquationsEvidence {M : Type u} [MetricSpace M]
    (E : EinsteinFieldEquationsPackage M) where
  fieldEquationClosed : E.fieldEquation

def EinsteinFieldEquationsClosed {M : Type u} [MetricSpace M]
    (E : EinsteinFieldEquationsPackage M) : Prop :=
  E.fieldEquation

theorem einstein_field_equations_closed_from_evidence
    {M : Type u} [MetricSpace M] (E : EinsteinFieldEquationsPackage M)
    (Ev : EinsteinFieldEquationsEvidence E) : EinsteinFieldEquationsClosed E := by
  exact Ev.fieldEquationClosed

end MacroscopicInteractionGravitationalFieldMatterTheoremCanonicalLaneLean
end HautevilleHouse