import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CognitiveProcessesLearningTheoriesAspectsFoundationCanonicalLaneLean

structure DevelopmentalStagesPackage where
  piagetianStageSequence : Prop
  vygotskianZoneOfProximalDevelopment : Prop
  informationProcessingStageModel : Prop
  socioCulturalLearningModel : Prop

structure DevelopmentalStagesEvidence (D : DevelopmentalStagesPackage) where
  piagetianStageSequenceClosed : D.piagetianStageSequence
  vygotskianZoneOfProximalDevelopmentClosed : D.vygotskianZoneOfProximalDevelopment
  informationProcessingStageModelClosed : D.informationProcessingStageModel
  socioCulturalLearningModelClosed : D.socioCulturalLearningModel

def DevelopmentalStagesClosed (D : DevelopmentalStagesPackage) : Prop :=
  D.piagetianStageSequence ∧ D.vygotskianZoneOfProximalDevelopment ∧
  D.informationProcessingStageModel ∧ D.socioCulturalLearningModel

theorem developmental_stages_closed_from_evidence (D : DevelopmentalStagesPackage)
    (E : DevelopmentalStagesEvidence D) : DevelopmentalStagesClosed D := by
  exact And.intro E.piagetianStageSequenceClosed
    (And.intro E.vygotskianZoneOfProximalDevelopmentClosed
      (And.intro E.informationProcessingStageModelClosed
        E.socioCulturalLearningModelClosed))

end CognitiveProcessesLearningTheoriesAspectsFoundationCanonicalLaneLean
end HautevilleHouse