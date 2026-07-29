import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DispersionTheoryDispersionRelationsArisingTheoremCanonicalLaneLean

structure CrossingSymmetryPackage where
  sTUCovariance : Prop
  analyticContinuation : Prop
  crossingMatrix : Type u
  crossingMatrixSatisfies : Prop

structure CrossingSymmetryEvidence (C : CrossingSymmetryPackage) where
  sTUCovarianceClosed : C.sTUCovariance
  analyticContinuationClosed : C.analyticContinuation
  crossingMatrixSatisfiesClosed : C.crossingMatrixSatisfies

def CrossingSymmetryClosed (C : CrossingSymmetryPackage) : Prop :=
  C.sTUCovariance ∧ C.analyticContinuation ∧ C.crossingMatrixSatisfies

theorem crossing_symmetry_closed_from_evidence (C : CrossingSymmetryPackage) (E : CrossingSymmetryEvidence C) : CrossingSymmetryClosed C := by
  exact And.intro E.sTUCovarianceClosed
    (And.intro E.analyticContinuationClosed E.crossingMatrixSatisfiesClosed)

end DispersionTheoryDispersionRelationsArisingTheoremCanonicalLaneLean
end HautevilleHouse
