import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CognitiveProcessesLearningTheoriesAspectsFoundationCanonicalLaneLean

structure LearningMechanismsPackage where
  associativeLearningModel : Prop
  cognitiveSkillAcquisitionModel : Prop
  knowledgeRepresentationModel : Prop
  schemaFormationModel : Prop
  transferOfLearningModel : Prop

structure LearningMechanismsEvidence (L : LearningMechanismsPackage) where
  associativeLearningModelClosed : L.associativeLearningModel
  cognitiveSkillAcquisitionModelClosed : L.cognitiveSkillAcquisitionModel
  knowledgeRepresentationModelClosed : L.knowledgeRepresentationModel
  schemaFormationModelClosed : L.schemaFormationModel
  transferOfLearningModelClosed : L.transferOfLearningModel

def LearningMechanismsClosed (L : LearningMechanismsPackage) : Prop :=
  L.associativeLearningModel ∧ L.cognitiveSkillAcquisitionModel ∧
  L.knowledgeRepresentationModel ∧ L.schemaFormationModel ∧
  L.transferOfLearningModel

theorem learning_mechanisms_closed_from_evidence (L : LearningMechanismsPackage)
    (E : LearningMechanismsEvidence L) : LearningMechanismsClosed L := by
  exact And.intro E.associativeLearningModelClosed
    (And.intro E.cognitiveSkillAcquisitionModelClosed
      (And.intro E.knowledgeRepresentationModelClosed
        (And.intro E.schemaFormationModelClosed E.transferOfLearningModelClosed)))

end CognitiveProcessesLearningTheoriesAspectsFoundationCanonicalLaneLean
end HautevilleHouse