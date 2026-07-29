import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalReactiveEffectsSolidMechanicsCanonicalLaneLean

structure ReactionDiffusionMechanicsPackage where
  fickLaw : Prop
  reactionTerm : Prop
  diffusionCoefficient : Prop
  concentrationField : Prop
  stressCoupling : Prop

structure ReactionDiffusionMechanicsEvidence (R : ReactionDiffusionMechanicsPackage) where
  fickLawClosed : R.fickLaw
  reactionTermClosed : R.reactionTerm
  diffusionCoefficientClosed : R.diffusionCoefficient
  concentrationFieldClosed : R.concentrationField
  stressCouplingClosed : R.stressCoupling

def ReactionDiffusionMechanicsClosed (R : ReactionDiffusionMechanicsPackage) : Prop :=
  R.fickLaw ∧ R.reactionTerm ∧ R.diffusionCoefficient ∧ R.concentrationField ∧ R.stressCoupling

theorem reaction_diffusion_mechanics_closed_from_evidence (R : ReactionDiffusionMechanicsPackage) (E : ReactionDiffusionMechanicsEvidence R) : ReactionDiffusionMechanicsClosed R := by
  exact And.intro E.fickLawClosed (And.intro E.reactionTermClosed (And.intro E.diffusionCoefficientClosed (And.intro E.concentrationFieldClosed E.stressCouplingClosed)))

end ChemicalReactiveEffectsSolidMechanicsCanonicalLaneLean
end HautevilleHouse