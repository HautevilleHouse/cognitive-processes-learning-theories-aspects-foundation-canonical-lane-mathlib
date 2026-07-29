import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace CognitiveProcessesLearningTheoriesAspectsFoundation

structure CognitiveSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure CognitiveAdmittedObject where
  space : CognitiveSpace
  closedThreeManifold : Prop
  simplyConnected : Prop
  sphereModel : Type
  sphereTopology : TopologicalSpace sphereModel
  homeomorphicToSphere : Prop
  conclusion : homeomorphicToSphere

def CognitiveWitnessClosed (O : CognitiveAdmittedObject) : Prop :=
  O.homeomorphicToSphere

end CognitiveProcessesLearningTheoriesAspectsFoundation
end HautevilleHouse
