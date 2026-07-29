import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CognitiveProcessesLearningTheoriesAspectsFoundationCanonicalLaneLean

structure MotivationAffectPackage where
  intrinsicMotivation : Prop
  achievementGoalOrientation : Prop
  selfEfficacy : Prop
  emotionalRegulation : Prop

structure MotivationAffectEvidence (M : MotivationAffectPackage) where
  intrinsicMotivationClosed : M.intrinsicMotivation
  achievementGoalOrientationClosed : M.achievementGoalOrientation
  selfEfficacyClosed : M.selfEfficacy
  emotionalRegulationClosed : M.emotionalRegulation

def MotivationAffectClosed (M : MotivationAffectPackage) : Prop :=
  M.intrinsicMotivation ∧ M.achievementGoalOrientation ∧ M.selfEfficacy ∧ M.emotionalRegulation

theorem motivation_affect_closed_from_evidence (M : MotivationAffectPackage)
    (E : MotivationAffectEvidence M) : MotivationAffectClosed M := by
  exact And.intro E.intrinsicMotivationClosed
    (And.intro E.achievementGoalOrientationClosed
      (And.intro E.selfEfficacyClosed E.emotionalRegulationClosed))

end CognitiveProcessesLearningTheoriesAspectsFoundationCanonicalLaneLean
end HautevilleHouse
