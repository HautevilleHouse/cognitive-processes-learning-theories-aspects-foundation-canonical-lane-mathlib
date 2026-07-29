import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CognitiveProcessesLearningTheoriesAspectsFoundationCanonicalLaneLean

structure CognitiveArchitecturePackage where
  workingMemoryModel : Prop
  longTermMemoryModel : Prop
  attentionalControlModel : Prop
  executiveFunctionModel : Prop
  cognitiveLoadModel : Prop

structure CognitiveArchitectureEvidence (C : CognitiveArchitecturePackage) where
  workingMemoryModelClosed : C.workingMemoryModel
  longTermMemoryModelClosed : C.longTermMemoryModel
  attentionalControlModelClosed : C.attentionalControlModel
  executiveFunctionModelClosed : C.executiveFunctionModel
  cognitiveLoadModelClosed : C.cognitiveLoadModel

def CognitiveArchitectureClosed (C : CognitiveArchitecturePackage) : Prop :=
  C.workingMemoryModel ∧ C.longTermMemoryModel ∧ C.attentionalControlModel ∧
  C.executiveFunctionModel ∧ C.cognitiveLoadModel

theorem cognitive_architecture_closed_from_evidence (C : CognitiveArchitecturePackage)
    (E : CognitiveArchitectureEvidence C) : CognitiveArchitectureClosed C := by
  exact And.intro E.workingMemoryModelClosed
    (And.intro E.longTermMemoryModelClosed
      (And.intro E.attentionalControlModelClosed
        (And.intro E.executiveFunctionModelClosed E.cognitiveLoadModelClosed)))

end CognitiveProcessesLearningTheoriesAspectsFoundationCanonicalLaneLean
end HautevilleHouse