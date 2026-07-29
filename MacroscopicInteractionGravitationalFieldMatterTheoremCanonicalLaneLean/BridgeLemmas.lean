import MacroscopicInteractionGravitationalFieldMatterTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MacroscopicInteractionGravitationalFieldMatterTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  MacroscopicInteractionGravitationalFieldMatterClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.fieldEquationsClosed

end MacroscopicInteractionGravitationalFieldMatterTheoremCanonicalLaneLean
end HautevilleHouse