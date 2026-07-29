import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalReactiveEffectsSolidMechanicsCanonicalLaneLean

structure ReactionKineticsPackage where
  speciesSet : Type u
  reactionNetwork : Type v
  rateConstants : Type w
  massActionLaw : Prop
  detailedBalance : Prop
  forwardBackwardRates : Prop

structure ReactionKineticsEvidence (K : ReactionKineticsPackage) where
  massActionLawClosed : K.massActionLaw
  detailedBalanceClosed : K.detailedBalance
  forwardBackwardRatesClosed : K.forwardBackwardRates

def ReactionKineticsClosed (K : ReactionKineticsPackage) : Prop :=
  K.massActionLaw ∧ K.detailedBalance ∧ K.forwardBackwardRates

theorem reaction_kinetics_closed_from_evidence (K : ReactionKineticsPackage)
    (E : ReactionKineticsEvidence K) : ReactionKineticsClosed K := by
  exact And.intro E.massActionLawClosed (And.intro E.detailedBalanceClosed E.forwardBackwardRatesClosed)

end ChemicalReactiveEffectsSolidMechanicsCanonicalLaneLean
end HautevilleHouse