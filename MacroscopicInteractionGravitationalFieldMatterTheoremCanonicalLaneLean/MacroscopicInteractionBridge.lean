import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MacroscopicInteractionGravitationalFieldMatterTheoremCanonicalLaneLean.GravitationalFieldEquation
import HautevilleHouse.MacroscopicInteractionGravitationalFieldMatterTheoremCanonicalLaneLean.MatterEnergyMomentum

namespace HautevilleHouse
namespace MacroscopicInteractionGravitationalFieldMatterTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  GravitationalFieldClosed A.object.gravField ∧ MatterEnergyMomentumClosed A.object.matter

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  have hGrav := A.object.gravFieldEvidence
  have hMatter := A.object.matterEvidence
  exact And.intro (gravitational_field_closed_from_evidence A.object.gravField hGrav) (matter_energy_momentum_closed_from_evidence A.object.matter hMatter)

end MacroscopicInteractionGravitationalFieldMatterTheoremCanonicalLaneLean
end HautevilleHouse
