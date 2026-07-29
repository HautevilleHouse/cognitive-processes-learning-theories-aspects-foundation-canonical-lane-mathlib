import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CognitiveProcessesLearningTheoriesAspectsFoundation

structure CognitiveAdmittedObject where
  learnerState : Type
  priorKnowledge : Prop
  learningOutcome : Prop
  transferability : Prop
  conclusion : learningOutcome

structure AdmissibleClass where
  object : CognitiveAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CognitiveWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CognitiveProcessesLearningTheoriesAspectsFoundation
end HautevilleHouse