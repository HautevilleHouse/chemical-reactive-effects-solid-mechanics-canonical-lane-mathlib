import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalReactiveEffectsSolidMechanicsCanonicalLaneLean

structure ReactionDiffusionPackage where
  diffusionCoefficient : Type u
  reactionRateField : Type v
  coupledPDE : Prop
  boundaryConditions : Prop
  initialConditions : Prop
  coupledPDETerm : coupledPDE
  boundaryConditionsTerm : boundaryConditions
  initialConditionsTerm : initialConditions

structure ReactionDiffusionEvidence (R : ReactionDiffusionPackage) where
  coupledPDEClosed : R.coupledPDE
  boundaryConditionsClosed : R.boundaryConditions
  initialConditionsClosed : R.initialConditions

def ReactionDiffusionClosed (R : ReactionDiffusionPackage) : Prop :=
  R.coupledPDE ∧ R.boundaryConditions ∧ R.initialConditions

theorem reaction_diffusion_closed_from_evidence (R : ReactionDiffusionPackage)
    (E : ReactionDiffusionEvidence R) : ReactionDiffusionClosed R := by
  exact And.intro E.coupledPDEClosed
    (And.intro E.boundaryConditionsClosed E.initialConditionsClosed)

end ChemicalReactiveEffectsSolidMechanicsCanonicalLaneLean
end HautevilleHouse