import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalReactiveEffectsSolidMechanicsCanonicalLaneLean

structure ChemicalEquilibriumPackage where
  reactants : Type u
  products : Type v
  equilibriumConstant : Prop
  leChatelierPrinciple : Prop
  reactionQuotient : Prop

structure ChemicalEquilibriumEvidence (E : ChemicalEquilibriumPackage) where
  equilibriumConstantClosed : E.equilibriumConstant
  leChatelierPrincipleClosed : E.leChatelierPrinciple
  reactionQuotientClosed : E.reactionQuotient

def ChemicalEquilibriumClosed (E : ChemicalEquilibriumPackage) : Prop :=
  E.equilibriumConstant ∧ E.leChatelierPrinciple ∧ E.reactionQuotient

theorem chemical_equilibrium_closed_from_evidence (E : ChemicalEquilibriumPackage)
    (Ev : ChemicalEquilibriumEvidence E) : ChemicalEquilibriumClosed E := by
  exact And.intro Ev.equilibriumConstantClosed (And.intro Ev.leChatelierPrincipleClosed Ev.reactionQuotientClosed)

end ChemicalReactiveEffectsSolidMechanicsCanonicalLaneLean
end HautevilleHouse