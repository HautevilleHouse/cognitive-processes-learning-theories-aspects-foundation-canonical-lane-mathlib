import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CognitiveProcessesLearningTheoriesAspectsFoundationCanonicalLaneLean

structure CognitiveProcessAdmissibleClass where
  object : AdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : CognitiveProcessAdmissibleClass) : Prop :=
  bridgeClosed A ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

structure AdmittedObject where
  process : Type u
  evidence : Prop
  conclusion : evidence

section BridgeLemmas

def bridgeClosed (A : CognitiveProcessAdmissibleClass) : Prop :=
  A.object.conclusion

theorem bridge_from_admissible_class (A : CognitiveProcessAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end BridgeLemmas

section GateLemmas

def gateClosed (A : CognitiveProcessAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : CognitiveProcessAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end GateLemmas

def ConstrainedLearningTheoriesClosure (A : CognitiveProcessAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_learning_theories_endgame (A : CognitiveProcessAdmissibleClass) :
    ConstrainedLearningTheoriesClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CognitiveProcessesLearningTheoriesAspectsFoundationCanonicalLaneLean
end HautevilleHouse
