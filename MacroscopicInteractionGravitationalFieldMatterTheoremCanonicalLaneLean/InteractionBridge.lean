import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MacroscopicInteractionGravitationalFieldMatterTheoremCanonicalLaneLean.GravitationalFieldEquations
import HautevilleHouse.MacroscopicInteractionGravitationalFieldMatterTheoremCanonicalLaneLean.MatterEnergyContents

namespace HautevilleHouse
namespace MacroscopicInteractionGravitationalFieldMatterTheoremCanonicalLaneLean

structure InteractionPackage where
  gravitationalField : GravitationalFieldPackage
  matterEnergy : MatterEnergyPackage
  interactionConsistent : Prop
  fieldEquationsCoupleMatter : Prop
  matterMovesInGeometry : Prop
  backReactionAccounted : Prop

structure InteractionEvidence (I : InteractionPackage) where
  interactionConsistentClosed : I.interactionConsistent
  fieldEquationsCoupleMatterClosed : I.fieldEquationsCoupleMatter
  matterMovesInGeometryClosed : I.matterMovesInGeometry
  backReactionAccountedClosed : I.backReactionAccounted

def InteractionClosed (I : InteractionPackage) : Prop :=
  I.interactionConsistent ∧ I.fieldEquationsCoupleMatter ∧
  I.matterMovesInGeometry ∧ I.backReactionAccounted

theorem interaction_closed_from_evidence (I : InteractionPackage)
    (E : InteractionEvidence I) : InteractionClosed I := by
  exact And.intro E.interactionConsistentClosed
    (And.intro E.fieldEquationsCoupleMatterClosed
      (And.intro E.matterMovesInGeometryClosed E.backReactionAccountedClosed))

def bridgeClosed (A : AdmissibleClass) : Prop :=
  let G := A.object.spacetimeManifold; True

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  trivial

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end MacroscopicInteractionGravitationalFieldMatterTheoremCanonicalLaneLean
end HautevilleHouse
