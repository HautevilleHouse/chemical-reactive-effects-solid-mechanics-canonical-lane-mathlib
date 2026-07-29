import ChemicalReactiveEffectsSolidMechanicsCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace ChemicalReactiveEffectsSolidMechanicsCanonicalLaneLean

structure MathlibProofObligation where
  sourceKey : String
  theoremObject : String
  commonCoreImported : Bool
  theoremSpecificDefinitionsNative : Bool
  theoremSpecificBridgeNative : Bool
  theoremSpecificAdmittedClosureNative : Bool
  unrestrictedClassicalClosureNative : Bool
  carriedGap : String

def mathlibProofObligation : MathlibProofObligation := {
  sourceKey := "ChemicalReactiveEffectsSolidMechanics",
  theoremObject := "Chemical equilibrium closure",
  commonCoreImported := true,
  theoremSpecificDefinitionsNative := true,
  theoremSpecificBridgeNative := true,
  theoremSpecificAdmittedClosureNative := true,
  unrestrictedClassicalClosureNative := false,
  carriedGap := "Endgame pilot closes over the admitted class; unrestricted classical closure remains carried"
}

def theoremSpecificEndgamePilotClosed : Prop :=
  ∀ A : AdmissibleClass, ConstrainedChemicalClosure A

theorem theorem_specific_endgame_pilot_checked : theoremSpecificEndgamePilotClosed := by
  intro A; exact constrained_chemical_endgame A

end ChemicalReactiveEffectsSolidMechanicsCanonicalLaneLean
end HautevilleHouse