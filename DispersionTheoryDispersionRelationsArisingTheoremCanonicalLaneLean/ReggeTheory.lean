import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DispersionTheoryDispersionRelationsArisingTheoremCanonicalLaneLean

structure ReggeTrajectory where
  angularMomentum : ℝ → ℂ
  signature : ℤ
  analyticInRightHalfPlane : Prop
  linearAsymptotic : Prop

def ReggeTheoryClosed (R : ReggeTrajectory) : Prop :=
  R.analyticInRightHalfPlane ∧ R.linearAsymptotic

theorem regge_trajectory_closed (R : ReggeTrajectory) (h1 : R.analyticInRightHalfPlane) (h2 : R.linearAsymptotic) : ReggeTheoryClosed R :=
  And.intro h1 h2

end DispersionTheoryDispersionRelationsArisingTheoremCanonicalLaneLean
end HautevilleHouse