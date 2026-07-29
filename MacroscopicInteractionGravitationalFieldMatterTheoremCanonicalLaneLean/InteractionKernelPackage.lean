import .FieldEquationsPackage

namespace HautevilleHouse
namespace MacroscopicInteractionGravitationalFieldMatterTheoremCanonicalLaneLean

structure InteractionKernelPackage {F : FieldEquationsPackage} where
  matterLagrangian : Prop
  interactionTerm : Prop
  kernelRegularity : Prop
  couplingConsistency : Prop
  gaugeInvariance : Prop

structure InteractionKernelEvidence {F : FieldEquationsPackage} (I : InteractionKernelPackage F) where
  matterLagrangianClosed : I.matterLagrangian
  interactionTermClosed : I.interactionTerm
  kernelRegularityClosed : I.kernelRegularity
  couplingConsistencyClosed : I.couplingConsistency
  gaugeInvarianceClosed : I.gaugeInvariance

def InteractionKernelClosed {F : FieldEquationsPackage} (I : InteractionKernelPackage F) : Prop :=
  I.matterLagrangian ∧ I.interactionTerm ∧ I.kernelRegularity ∧
  I.couplingConsistency ∧ I.gaugeInvariance

theorem interaction_kernel_closed_from_evidence
    {F : FieldEquationsPackage} (I : InteractionKernelPackage F)
    (E : InteractionKernelEvidence I) : InteractionKernelClosed I := by
  exact And.intro E.matterLagrangianClosed
    (And.intro E.interactionTermClosed
      (And.intro E.kernelRegularityClosed
        (And.intro E.couplingConsistencyClosed E.gaugeInvarianceClosed)))

end MacroscopicInteractionGravitationalFieldMatterTheoremCanonicalLaneLean
end HautevilleHouse