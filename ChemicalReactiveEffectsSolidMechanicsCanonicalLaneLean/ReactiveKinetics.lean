import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalReactiveEffectsSolidMechanicsCanonicalLaneLean

structure ReactionRatePackage where
  species : Type u
  concentration : species → Type v
  rateLaw : Prop
  rateConstant : Prop
  temperatureDependence : Prop
  equilibriumConstant : Prop

structure ReactiveKineticsEvidence (R : ReactionRatePackage) where
  rateLawClosed : R.rateLaw
  rateConstantClosed : R.rateConstant
  temperatureDependenceClosed : R.temperatureDependence
  equilibriumConstantClosed : R.equilibriumConstant

def ReactiveKineticsClosed (R : ReactionRatePackage) : Prop :=
  R.rateLaw ∧ R.rateConstant ∧ R.temperatureDependence ∧ R.equilibriumConstant

theorem reactive_kinetics_closed_from_evidence (R : ReactionRatePackage)
    (E : ReactiveKineticsEvidence R) : ReactiveKineticsClosed R := by
  exact And.intro E.rateLawClosed (And.intro E.rateConstantClosed
    (And.intro E.temperatureDependenceClosed E.equilibriumConstantClosed))

end ChemicalReactiveEffectsSolidMechanicsCanonicalLaneLean
end HautevilleHouse