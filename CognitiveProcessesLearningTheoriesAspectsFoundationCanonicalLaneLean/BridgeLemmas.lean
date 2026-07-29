import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CognitiveProcessesLearningTheoriesAspectsFoundation

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CognitiveWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CognitiveProcessesLearningTheoriesAspectsFoundation
end HautevilleHouse
