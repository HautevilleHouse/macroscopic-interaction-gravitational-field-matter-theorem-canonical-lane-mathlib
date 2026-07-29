import MacroscopicInteractionGravitationalFieldMatterTheoremCanonicalLaneLean.GravitationalWavePropagation

namespace HautevilleHouse
namespace MacroscopicInteractionGravitationalFieldMatterTheoremCanonicalLaneLean

structure WeakFieldLimitPackage {M : Type u} [MetricSpace M]
    {E : EinsteinFieldEquationsPackage M} {P : MatterEnergyMomentumPackage M E}
    (G : GravitationalWavePropagationPackage M E P) where
  linearizedEquations : Prop
  newtonianPotential : M → ℝ
  perturbationMetric : M → (Type v)
  matchToNewtonian : Prop

structure WeakFieldLimitEvidence {M : Type u} [MetricSpace M]
    {E : EinsteinFieldEquationsPackage M} {P : MatterEnergyMomentumPackage M E}
    {G : GravitationalWavePropagationPackage M E P} (W : WeakFieldLimitPackage M E P G) where
  linearizedEquationsClosed : W.linearizedEquations
  matchToNewtonianClosed : W.matchToNewtonian

def WeakFieldLimitClosed {M : Type u} [MetricSpace M]
    {E : EinsteinFieldEquationsPackage M} {P : MatterEnergyMomentumPackage M E}
    {G : GravitationalWavePropagationPackage M E P} (W : WeakFieldLimitPackage M E P G) : Prop :=
  W.linearizedEquations ∧ W.matchToNewtonian

theorem weak_field_limit_closed_from_evidence
    {M : Type u} [MetricSpace M] {E : EinsteinFieldEquationsPackage M}
    {P : MatterEnergyMomentumPackage M E} {G : GravitationalWavePropagationPackage M E P}
    (W : WeakFieldLimitPackage M E P G) (Ev : WeakFieldLimitEvidence W) :
    WeakFieldLimitClosed W := by
  exact And.intro Ev.linearizedEquationsClosed Ev.matchToNewtonianClosed

end MacroscopicInteractionGravitationalFieldMatterTheoremCanonicalLaneLean
end HautevilleHouse