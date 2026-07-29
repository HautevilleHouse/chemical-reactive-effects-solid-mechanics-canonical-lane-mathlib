import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalReactiveEffectsSolidMechanicsCanonicalLaneLean

structure SolidMechanicsPackage where
  stressTensor : Type u
  strainTensor : Type v
  constitutiveLaw : Prop
  compatibilityCondition : Prop
  equilibriumEquation : Prop
  constitutiveLawTerm : constitutiveLaw
  compatibilityConditionTerm : compatibilityCondition
  equilibriumEquationTerm : equilibriumEquation

structure SolidMechanicsEvidence (S : SolidMechanicsPackage) where
  constitutiveLawClosed : S.constitutiveLaw
  compatibilityConditionClosed : S.compatibilityCondition
  equilibriumEquationClosed : S.equilibriumEquation

def SolidMechanicsClosed (S : SolidMechanicsPackage) : Prop :=
  S.constitutiveLaw ∧ S.compatibilityCondition ∧ S.equilibriumEquation

theorem solid_mechanics_closed_from_evidence (S : SolidMechanicsPackage)
    (E : SolidMechanicsEvidence S) : SolidMechanicsClosed S := by
  exact And.intro E.constitutiveLawClosed
    (And.intro E.compatibilityConditionClosed E.equilibriumEquationClosed)

end ChemicalReactiveEffectsSolidMechanicsCanonicalLaneLean
end HautevilleHouse