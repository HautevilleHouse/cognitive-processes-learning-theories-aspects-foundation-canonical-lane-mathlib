import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CognitiveProcessesLearningTheoriesAspectsFoundationCanonicalLaneLean

def ConstrainedCognitiveClosure (A : CognitiveProcessAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_cognitive_endgame (A : CognitiveProcessAdmissibleClass) :
    ConstrainedCognitiveClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CognitiveProcessesLearningTheoriesAspectsFoundationCanonicalLaneLean
end HautevilleHouse
