import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalReactiveEffectsSolidMechanicsCanonicalLaneLean

structure SolidMechanicsEffectPackage where
  stressStrainRelation : Type u
  chemicalExpansion : Prop
  materialDegradation : Prop
  fractureCriteria : Prop

structure SolidMechanicsEffectEvidence (S : SolidMechanicsEffectPackage) where
  chemicalExpansionClosed : S.chemicalExpansion
  materialDegradationClosed : S.materialDegradation
  fractureCriteriaClosed : S.fractureCriteria

def SolidMechanicsEffectClosed (S : SolidMechanicsEffectPackage) : Prop :=
  S.chemicalExpansion ∧ S.materialDegradation ∧ S.fractureCriteria

theorem solid_mechanics_effect_closed_from_evidence
    (S : SolidMechanicsEffectPackage) (E : SolidMechanicsEffectEvidence S) :
    SolidMechanicsEffectClosed S := by
  exact And.intro E.chemicalExpansionClosed
    (And.intro E.materialDegradationClosed E.fractureCriteriaClosed)

end ChemicalReactiveEffectsSolidMechanicsCanonicalLaneLean
end HautevilleHouse