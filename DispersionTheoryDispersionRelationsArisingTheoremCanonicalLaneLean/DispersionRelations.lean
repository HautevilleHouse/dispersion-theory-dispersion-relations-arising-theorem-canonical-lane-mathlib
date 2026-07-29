import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DispersionTheoryDispersionRelationsArisingTheoremCanonicalLaneLean

structure DispersionRelationsPackage where
  forwardScatteringAmplitude : Type u
  realPart : Type v
  imaginaryPart : Type w
  dispersionRelationForm : Prop
  crossingEvenOdd : Prop

structure DispersionRelationsEvidence (D : DispersionRelationsPackage) where
  dispersionRelationFormClosed : D.dispersionRelationForm
  crossingEvenOddClosed : D.crossingEvenOdd

def DispersionRelationsClosed (D : DispersionRelationsPackage) : Prop :=
  D.dispersionRelationForm ∧ D.crossingEvenOdd

theorem dispersion_relations_closed_from_evidence
    (D : DispersionRelationsPackage) (E : DispersionRelationsEvidence D) :
    DispersionRelationsClosed D := by
  exact And.intro E.dispersionRelationFormClosed E.crossingEvenOddClosed

end DispersionTheoryDispersionRelationsArisingTheoremCanonicalLaneLean
end HautevilleHouse