import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalReactiveEffectsSolidMechanicsCanonicalLaneLean

structure ThermodynamicsEquilibriumPackage where
  gibbsFreeEnergy : Type u
  equilibriumConstant : Prop
  enthalpyChange : Prop
  entropyChange : Prop
  equilibriumCondition : Prop

structure ThermodynamicsEquilibriumEvidence (E : ThermodynamicsEquilibriumPackage) where
  equilibriumConstantClosed : E.equilibriumConstant
  enthalpyChangeClosed : E.enthalpyChange
  entropyChangeClosed : E.entropyChange
  equilibriumConditionClosed : E.equilibriumCondition

def ThermodynamicsEquilibriumClosed (E : ThermodynamicsEquilibriumPackage) : Prop :=
  E.equilibriumConstant ∧ E.enthalpyChange ∧ E.entropyChange ∧ E.equilibriumCondition

theorem thermodynamics_equilibrium_closed_from_evidence
    (E : ThermodynamicsEquilibriumPackage) (Ev : ThermodynamicsEquilibriumEvidence E) :
    ThermodynamicsEquilibriumClosed E := by
  exact And.intro Ev.equilibriumConstantClosed
    (And.intro Ev.enthalpyChangeClosed
      (And.intro Ev.entropyChangeClosed Ev.equilibriumConditionClosed))

end ChemicalReactiveEffectsSolidMechanicsCanonicalLaneLean
end HautevilleHouse