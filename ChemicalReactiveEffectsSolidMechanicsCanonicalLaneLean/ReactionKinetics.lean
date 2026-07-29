import ChemicalReactiveEffectsSolidMechanicsCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace ChemicalReactiveEffectsSolidMechanicsCanonicalLaneLean

structure ReactionKineticsPackage where
  reactionRateLaw : Prop
  rateConstantsDefined : Prop
  equilibriumConstant : Prop
  massAction : Prop

structure KineticsEvidence (K : ReactionKineticsPackage) where
  reactionRateLawClosed : K.reactionRateLaw
  rateConstantsDefinedClosed : K.rateConstantsDefined
  equilibriumConstantClosed : K.equilibriumConstant
  massActionClosed : K.massAction

def KineticsClosed (K : ReactionKineticsPackage) : Prop :=
  K.reactionRateLaw ∧ K.rateConstantsDefined ∧ K.equilibriumConstant ∧ K.massAction

theorem kinetics_closed_from_evidence (K : ReactionKineticsPackage) (E : KineticsEvidence K) : KineticsClosed K :=
  And.intro E.reactionRateLawClosed (And.intro E.rateConstantsDefinedClosed (And.intro E.equilibriumConstantClosed E.massActionClosed))

end ChemicalReactiveEffectsSolidMechanicsCanonicalLaneLean
end HautevilleHouse