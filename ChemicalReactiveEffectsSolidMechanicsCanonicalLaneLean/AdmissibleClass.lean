import ChemicalReactiveEffectsSolidMechanicsCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace ChemicalReactiveEffectsSolidMechanicsCanonicalLaneLean

structure AdmissibleClass where
  object : ChemicalReactiveAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ChemicalReactiveWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ChemicalReactiveEffectsSolidMechanicsCanonicalLaneLean
end HautevilleHouse
