import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CognitiveProcessesLearningTheoriesAspectsFoundationCanonicalLaneLean

structure EncodingProcessesPackage where
  elaborationDepth : Prop
  dualCoding : Prop
  meaningfulOrganization : Prop
  rehearsalType : Prop

structure EncodingProcessesEvidence (E : EncodingProcessesPackage) where
  elaborationDepthClosed : E.elaborationDepth
  dualCodingClosed : E.dualCoding
  meaningfulOrganizationClosed : E.meaningfulOrganization
  rehearsalTypeClosed : E.rehearsalType

def EncodingProcessesClosed (E : EncodingProcessesPackage) : Prop :=
  E.elaborationDepth ∧ E.dualCoding ∧ E.meaningfulOrganization ∧ E.rehearsalType

theorem encoding_processes_closed_from_evidence (E : EncodingProcessesPackage)
    (Ev : EncodingProcessesEvidence E) : EncodingProcessesClosed E := by
  exact And.intro Ev.elaborationDepthClosed
    (And.intro Ev.dualCodingClosed
      (And.intro Ev.meaningfulOrganizationClosed Ev.rehearsalTypeClosed))

end CognitiveProcessesLearningTheoriesAspectsFoundationCanonicalLaneLean
end HautevilleHouse
