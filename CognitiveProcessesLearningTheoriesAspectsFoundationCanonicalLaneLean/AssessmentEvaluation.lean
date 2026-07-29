import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CognitiveProcessesLearningTheoriesAspectsFoundationCanonicalLaneLean

structure AssessmentEvaluationPackage where
  formativeAssessmentModel : Prop
  summativeAssessmentModel : Prop
  performanceBasedAssessmentModel : Prop
  selfAssessmentModel : Prop
  diagnosticAssessmentModel : Prop

structure AssessmentEvaluationEvidence (A : AssessmentEvaluationPackage) where
  formativeAssessmentModelClosed : A.formativeAssessmentModel
  summativeAssessmentModelClosed : A.summativeAssessmentModel
  performanceBasedAssessmentModelClosed : A.performanceBasedAssessmentModel
  selfAssessmentModelClosed : A.selfAssessmentModel
  diagnosticAssessmentModelClosed : A.diagnosticAssessmentModel

def AssessmentEvaluationClosed (A : AssessmentEvaluationPackage) : Prop :=
  A.formativeAssessmentModel ∧ A.summativeAssessmentModel ∧
  A.performanceBasedAssessmentModel ∧ A.selfAssessmentModel ∧ A.diagnosticAssessmentModel

theorem assessment_evaluation_closed_from_evidence (A : AssessmentEvaluationPackage)
    (E : AssessmentEvaluationEvidence A) : AssessmentEvaluationClosed A := by
  exact And.intro E.formativeAssessmentModelClosed
    (And.intro E.summativeAssessmentModelClosed
      (And.intro E.performanceBasedAssessmentModelClosed
        (And.intro E.selfAssessmentModelClosed E.diagnosticAssessmentModelClosed)))

end CognitiveProcessesLearningTheoriesAspectsFoundationCanonicalLaneLean
end HautevilleHouse