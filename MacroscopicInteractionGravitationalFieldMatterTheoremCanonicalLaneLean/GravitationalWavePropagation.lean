import MacroscopicInteractionGravitationalFieldMatterTheoremCanonicalLaneLean.MatterEnergyMomentum

namespace HautevilleHouse
namespace MacroscopicInteractionGravitationalFieldMatterTheoremCanonicalLaneLean

structure GravitationalWavePropagationPackage {M : Type u} [MetricSpace M]
    {E : EinsteinFieldEquationsPackage M} (P : MatterEnergyMomentumPackage M E) where
  waveEquation : Prop
  speedOfLight : ℝ
  polarizationStates : Nat
  energyFlux : Prop

structure GravitationalWavePropagationEvidence {M : Type u} [MetricSpace M]
    {E : EinsteinFieldEquationsPackage M} {P : MatterEnergyMomentumPackage M E}
    (G : GravitationalWavePropagationPackage M E P) where
  waveEquationClosed : G.waveEquation
  energyFluxClosed : G.energyFlux

def GravitationalWavePropagationClosed {M : Type u} [MetricSpace M]
    {E : EinsteinFieldEquationsPackage M} {P : MatterEnergyMomentumPackage M E}
    (G : GravitationalWavePropagationPackage M E P) : Prop :=
  G.waveEquation ∧ G.energyFlux

theorem gravitational_wave_propagation_closed_from_evidence
    {M : Type u} [MetricSpace M] {E : EinsteinFieldEquationsPackage M}
    {P : MatterEnergyMomentumPackage M E} (G : GravitationalWavePropagationPackage M E P)
    (Ev : GravitationalWavePropagationEvidence G) : GravitationalWavePropagationClosed G := by
  exact And.intro Ev.waveEquationClosed Ev.energyFluxClosed

end MacroscopicInteractionGravitationalFieldMatterTheoremCanonicalLaneLean
end HautevilleHouse