import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MacroscopicInteractionGravitationalFieldMatterTheoremCanonicalLaneLean

structure MacroscopicSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure MacroscopicAdmittedObject where
  spacetime : MacroscopicSpace
  matterField : Prop
  gravitationalField : Prop
  interactionLaw : Prop
  conclusion : interactionLaw

def MacroscopicWitnessClosed (O : MacroscopicAdmittedObject) : Prop :=
  O.interactionLaw

end MacroscopicInteractionGravitationalFieldMatterTheoremCanonicalLaneLean
end HautevilleHouse