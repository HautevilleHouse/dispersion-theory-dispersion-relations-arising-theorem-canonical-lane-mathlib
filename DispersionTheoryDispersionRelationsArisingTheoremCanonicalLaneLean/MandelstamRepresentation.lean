import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DispersionTheoryDispersionRelationsArisingTheoremCanonicalLaneLean

structure MandelstamRepresentationPackage where
  scatteringAmplitude : Type u
  invariantVariables : Type v
  doubleSpectralDecomposition : Prop
  crossingSymmetry : Prop
  analyticContinuation : Prop

structure MandelstamRepresentationEvidence (M : MandelstamRepresentationPackage) where
  doubleSpectralDecompositionClosed : M.doubleSpectralDecomposition
  crossingSymmetryClosed : M.crossingSymmetry
  analyticContinuationClosed : M.analyticContinuation

def MandelstamRepresentationClosed (M : MandelstamRepresentationPackage) : Prop :=
  M.doubleSpectralDecomposition ∧ M.crossingSymmetry ∧ M.analyticContinuation

theorem mandelstam_representation_closed_from_evidence
    (M : MandelstamRepresentationPackage) (E : MandelstamRepresentationEvidence M) :
    MandelstamRepresentationClosed M := by
  exact And.intro E.doubleSpectralDecompositionClosed
    (And.intro E.crossingSymmetryClosed E.analyticContinuationClosed)

end DispersionTheoryDispersionRelationsArisingTheoremCanonicalLaneLean
end HautevilleHouse