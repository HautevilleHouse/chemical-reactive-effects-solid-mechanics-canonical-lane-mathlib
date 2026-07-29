import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalReactiveEffectsSolidMechanicsCanonicalLaneLean

structure ThermodynamicPackage where
  system : Type u
  temperature : Prop
  pressure : Prop
  volume : Prop
  internalEnergy : Prop
  enthalpy : Prop
  entropy : Prop
  gibbsFreeEnergy : Prop

structure ThermodynamicEvidence (T : ThermodynamicPackage) where
  temperatureClosed : T.temperature
  pressureClosed : T.pressure
  volumeClosed : T.volume
  internalEnergyClosed : T.internalEnergy
  enthalpyClosed : T.enthalpy
  entropyClosed : T.entropy
  gibbsFreeEnergyClosed : T.gibbsFreeEnergy

def ThermodynamicClosed (T : ThermodynamicPackage) : Prop :=
  T.temperature ∧ T.pressure ∧ T.volume ∧ T.internalEnergy ∧ T.enthalpy ∧ T.entropy ∧ T.gibbsFreeEnergy

theorem thermodynamic_closed_from_evidence (T : ThermodynamicPackage)
    (E : ThermodynamicEvidence T) : ThermodynamicClosed T := by
  exact And.intro E.temperatureClosed (And.intro E.pressureClosed (And.intro E.volumeClosed
    (And.intro E.internalEnergyClosed (And.intro E.enthalpyClosed
      (And.intro E.entropyClosed E.gibbsFreeEnergyClosed)))))

end ChemicalReactiveEffectsSolidMechanicsCanonicalLaneLean
end HautevilleHouse