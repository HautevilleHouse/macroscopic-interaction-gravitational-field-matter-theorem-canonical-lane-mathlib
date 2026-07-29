import .AdmissibleClass

namespace HautevilleHouse
namespace MacroscopicInteractionGravitationalFieldMatterTheoremCanonicalLaneLean

structure FieldEquationsPackage where
  einsteinFieldEquations : Prop
  stressEnergyTensor : Prop
  couplingConstant : Prop
  conservationLaw : Prop
  metricSmoothness : Prop
  matterFieldSmoothness : Prop

structure FieldEquationsEvidence (F : FieldEquationsPackage) where
  einsteinFieldEquationsClosed : F.einsteinFieldEquations
  stressEnergyTensorClosed : F.stressEnergyTensor
  couplingConstantClosed : F.couplingConstant
  conservationLawClosed : F.conservationLaw
  metricSmoothnessClosed : F.metricSmoothness
  matterFieldSmoothnessClosed : F.matterFieldSmoothness

def FieldEquationsClosed (F : FieldEquationsPackage) : Prop :=
  F.einsteinFieldEquations ∧ F.stressEnergyTensor ∧ F.couplingConstant ∧
  F.conservationLaw ∧ F.metricSmoothness ∧ F.matterFieldSmoothness

theorem field_equations_closed_from_evidence (F : FieldEquationsPackage) (E : FieldEquationsEvidence F) :
    FieldEquationsClosed F := by
  exact And.intro E.einsteinFieldEquationsClosed
    (And.intro E.stressEnergyTensorClosed
      (And.intro E.couplingConstantClosed
        (And.intro E.conservationLawClosed
          (And.intro E.metricSmoothnessClosed E.matterFieldSmoothnessClosed))))

end MacroscopicInteractionGravitationalFieldMatterTheoremCanonicalLaneLean
end HautevilleHouse