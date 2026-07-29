import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalReactiveEffectsSolidMechanicsCanonicalLaneLean

structure SolidMechanicsCouplingPackage where
  stressTensor : Type u
  strainTensor : Type v
  constitutiveLaw : Prop
  chemomechanicalCoupling : Prop
  diffusionReactionCoupling : Prop

structure SolidMechanicsCouplingEvidence (S : SolidMechanicsCouplingPackage) where
  constitutiveLawClosed : S.constitutiveLaw
  chemomechanicalCouplingClosed : S.chemomechanicalCoupling
  diffusionReactionCouplingClosed : S.diffusionReactionCoupling

def SolidMechanicsCouplingClosed (S : SolidMechanicsCouplingPackage) : Prop :=
  S.constitutiveLaw ∧ S.chemomechanicalCoupling ∧ S.diffusionReactionCoupling

theorem solid_mechanics_coupling_closed_from_evidence (S : SolidMechanicsCouplingPackage)
    (E : SolidMechanicsCouplingEvidence S) : SolidMechanicsCouplingClosed S := by
  exact And.intro E.constitutiveLawClosed (And.intro E.chemomechanicalCouplingClosed E.diffusionReactionCouplingClosed)

end ChemicalReactiveEffectsSolidMechanicsCanonicalLaneLean
end HautevilleHouse