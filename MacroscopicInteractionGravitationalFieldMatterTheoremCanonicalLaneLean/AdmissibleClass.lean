import MacroscopicInteractionGravitationalFieldMatterTheoremCanonicalLaneLean.WeakFieldLimit

namespace HautevilleHouse
namespace MacroscopicInteractionGravitationalFieldMatterTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : MacroscopicInteractionGravitationalFieldMatterPackage
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  MacroscopicInteractionGravitationalFieldMatterClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MacroscopicInteractionGravitationalFieldMatterTheoremCanonicalLaneLean
end HautevilleHouse