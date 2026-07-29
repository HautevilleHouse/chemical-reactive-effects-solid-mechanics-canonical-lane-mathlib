import ChemicalReactiveEffectsSolidMechanicsCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace ChemicalReactiveEffectsSolidMechanicsCanonicalLaneLean

structure StressStrainConstitutivePackage where
  stressTensorDefined : Prop
  strainTensorDefined : Prop
  constitutiveRelation : Prop
  materialSymmetry : Prop

structure StressStrainEvidence (P : StressStrainConstitutivePackage) where
  stressTensorClosed : P.stressTensorDefined
  strainTensorClosed : P.strainTensorDefined
  constitutiveRelationClosed : P.constitutiveRelation
  materialSymmetryClosed : P.materialSymmetry

def StressStrainClosed (P : StressStrainConstitutivePackage) : Prop :=
  P.stressTensorDefined ∧ P.strainTensorDefined ∧ P.constitutiveRelation ∧ P.materialSymmetry

theorem stress_strain_closed_from_evidence (P : StressStrainConstitutivePackage) (E : StressStrainEvidence P) : StressStrainClosed P :=
  And.intro E.stressTensorClosed (And.intro E.strainTensorClosed (And.intro E.constitutiveRelationClosed E.materialSymmetryClosed))

end ChemicalReactiveEffectsSolidMechanicsCanonicalLaneLean
end HautevilleHouse