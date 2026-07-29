import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CognitiveProcessesLearningTheoriesAspectsFoundationCanonicalLaneLean

structure AssemblyTheoryPackage where
  process : Type u
  decompositionAxiom : Prop
  compositionAxiom : Prop
  evidence : Prop
  decompositionClosed : decompositionAxiom
  compositionClosed : compositionAxiom

def AssemblyTheoryClosed (P : AssemblyTheoryPackage) : Prop :=
  P.decompositionAxiom ∧ P.compositionAxiom

theorem assembly_theory_closed_from_evidence (P : AssemblyTheoryPackage) :
    AssemblyTheoryClosed P := by
  exact And.intro P.decompositionClosed P.compositionClosed

structure PredictiveCodingPackage (A : AssemblyTheoryPackage) where
  hierarchicalInference : Prop
  predictionErrorMinimization : Prop
  freeEnergyPrinciple : Prop
  evidence : Prop
  hierarchicalInferenceClosed : hierarchicalInference
  predictionErrorMinimizationClosed : predictionErrorMinimization
  freeEnergyPrincipleClosed : freeEnergyPrinciple

def PredictiveCodingClosed {A : AssemblyTheoryPackage}
    (P : PredictiveCodingPackage A) : Prop :=
  P.hierarchicalInference ∧ P.predictionErrorMinimization ∧ P.freeEnergyPrinciple

theorem predictive_coding_closed_from_evidence
    {A : AssemblyTheoryPackage} (P : PredictiveCodingPackage A)
    (E : PredictiveCodingClosed P) : PredictiveCodingClosed P := E

structure ActiveInferencePackage (A : AssemblyTheoryPackage) where
  beliefUpdating : Prop
  actionSelection : Prop
  expectedFreeEnergy : Prop
  evidence : Prop
  beliefUpdatingClosed : beliefUpdating
  actionSelectionClosed : actionSelection
  expectedFreeEnergyClosed : expectedFreeEnergy

def ActiveInferenceClosed {A : AssemblyTheoryPackage}
    (I : ActiveInferencePackage A) : Prop :=
  I.beliefUpdating ∧ I.actionSelection ∧ I.expectedFreeEnergy

theorem active_inference_closed_from_evidence
    {A : AssemblyTheoryPackage} (I : ActiveInferencePackage A)
    (E : ActiveInferenceClosed I) : ActiveInferenceClosed I := E

end CognitiveProcessesLearningTheoriesAspectsFoundationCanonicalLaneLean
end HautevilleHouse
