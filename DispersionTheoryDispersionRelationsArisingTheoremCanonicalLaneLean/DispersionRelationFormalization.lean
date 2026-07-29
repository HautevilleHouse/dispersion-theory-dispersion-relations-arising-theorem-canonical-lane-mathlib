import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DispersionTheoryDispersionRelationsArisingTheoremCanonicalLaneLean

structure DispersionRelationPackage where
  scatteringAmplitude : Type u
  crossingSymmetry : Prop
  analyticContinuation : Prop
  unitarityConstraint : Prop
  dispersionRelationDerived : Prop

structure DispersionRelationEvidence (D : DispersionRelationPackage) where
  crossingSymmetryClosed : D.crossingSymmetry
  analyticContinuationClosed : D.analyticContinuation
  unitarityConstraintClosed : D.unitarityConstraint
  dispersionRelationDerivedClosed : D.dispersionRelationDerived

def DispersionRelationClosed (D : DispersionRelationPackage) : Prop :=
  D.crossingSymmetry ∧ D.analyticContinuation ∧ D.unitarityConstraint ∧ D.dispersionRelationDerived

theorem dispersion_relation_closed_from_evidence (D : DispersionRelationPackage) (E : DispersionRelationEvidence D) :
    DispersionRelationClosed D := by
  exact And.intro E.crossingSymmetryClosed
    (And.intro E.analyticContinuationClosed
      (And.intro E.unitarityConstraintClosed E.dispersionRelationDerivedClosed))

end DispersionTheoryDispersionRelationsArisingTheoremCanonicalLaneLean
end HautevilleHouse