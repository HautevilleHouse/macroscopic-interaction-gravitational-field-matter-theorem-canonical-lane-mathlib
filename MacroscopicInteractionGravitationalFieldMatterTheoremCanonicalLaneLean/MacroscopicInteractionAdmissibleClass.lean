import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MacroscopicInteractionGravitationalFieldMatterTheorem

structure MacroscopicSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  fourDimensional : Prop
  lorentzianMetric : Prop

structure MacroscopicAdmittedObject where
  space : MacroscopicSpace
  stressEnergyTensor : Prop
  fieldEquationsSatisfied : Prop
  constraintDamped : Prop
  conclusion : constraintDamped ∧ fieldEquationsSatisfied

def AdmissibleClass where
  object : MacroscopicAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

end MacroscopicInteractionGravitationalFieldMatterTheorem
end HautevilleHouse