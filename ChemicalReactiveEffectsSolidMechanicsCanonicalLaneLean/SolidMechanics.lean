import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalReactiveEffectsSolidMechanicsCanonicalLaneLean

structure SolidMechanicsPackage where
  material : Type u
  stress : Prop
  strain : Prop
  constitutiveLaw : Prop
  displacement : Prop
  elasticModuli : Prop

structure SolidMechanicsEvidence (S : SolidMechanicsPackage) where
  stressClosed : S.stress
  strainClosed : S.strain
  constitutiveLawClosed : S.constitutiveLaw
  displacementClosed : S.displacement
  elasticModuliClosed : S.elasticModuli

def SolidMechanicsClosed (S : SolidMechanicsPackage) : Prop :=
  S.stress ∧ S.strain ∧ S.constitutiveLaw ∧ S.displacement ∧ S.elasticModuli

theorem solid_mechanics_closed_from_evidence (S : SolidMechanicsPackage)
    (E : SolidMechanicsEvidence S) : SolidMechanicsClosed S := by
  exact And.intro E.stressClosed (And.intro E.strainClosed (And.intro E.constitutiveLawClosed
    (And.intro E.displacementClosed E.elasticModuliClosed)))

end ChemicalReactiveEffectsSolidMechanicsCanonicalLaneLean
end HautevilleHouse