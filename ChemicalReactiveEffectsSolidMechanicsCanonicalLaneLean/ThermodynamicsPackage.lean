import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalReactiveEffectsSolidMechanicsCanonicalLaneLean

structure ThermodynamicsPackage where
  temperature : Type u
  pressure : Type v
  volume : Type w
  internalEnergy : Prop
  entropyDefinition : Prop
  gibbsFreeEnergy : Prop

structure ThermodynamicsEvidence (T : ThermodynamicsPackage) where
  internalEnergyClosed : T.internalEnergy
  entropyDefinitionClosed : T.entropyDefinition
  gibbsFreeEnergyClosed : T.gibbsFreeEnergy

def ThermodynamicsClosed (T : ThermodynamicsPackage) : Prop :=
  T.internalEnergy ∧ T.entropyDefinition ∧ T.gibbsFreeEnergy

theorem thermodynamics_closed_from_evidence (T : ThermodynamicsPackage)
    (E : ThermodynamicsEvidence T) : ThermodynamicsClosed T := by
  exact And.intro E.internalEnergyClosed (And.intro E.entropyDefinitionClosed E.gibbsFreeEnergyClosed)

end ChemicalReactiveEffectsSolidMechanicsCanonicalLaneLean
end HautevilleHouse