import ChemicalReactiveEffectsSolidMechanicsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalReactiveEffectsSolidMechanicsCanonicalLaneLean

structure SolidMechanicsSystem where
  carrier : Type
  topology : TopologicalSpace carrier
  stressTensor : carrier → (carrier → ℝ)
  strainTensor : carrier → (carrier → ℝ)
  reactionRateField : carrier → ℝ

structure ChemicalReactionAdmittedObject where
  system : SolidMechanicsSystem
  materialLaws : Prop
  chemicalKineticsModel : Prop
  constitutiveEquationsSatisfied : Prop
  equilibriumCondition : Prop
  conclusion : equilibriumCondition

structure EndgameState where
  object : ChemicalReactionAdmittedObject

def AdmittedObjectWitness (O : ChemicalReactionAdmittedObject) : Prop := O.equilibriumCondition

end ChemicalReactiveEffectsSolidMechanicsCanonicalLaneLean
end HautevilleHouse