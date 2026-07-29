import PoincareConjectureCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DispersionTheoryDispersionRelationsArisingTheoremCanonicalLaneLean

structure DispersionRelationPackage where
  energy : Type u
  momentum : Type v
  amplitude : Type w
  causalStructure : Prop
  analyticContinuation : Prop
  dispersionRelation : energy → momentum → Prop
  physicalConstraints : Prop

structure DispersionRelationEvidence (D : DispersionRelationPackage) where
  causalStructureClosed : D.causalStructure
  analyticContinuationClosed : D.analyticContinuation
  dispersionRelationClosed : ∀ e p, D.dispersionRelation e p
  physicalConstraintsClosed : D.physicalConstraints

def DispersionRelationClosed (D : DispersionRelationPackage) : Prop :=
  D.causalStructure ∧ D.analyticContinuation ∧ D.physicalConstraints

theorem dispersion_relation_closed_from_evidence (D : DispersionRelationPackage)
    (E : DispersionRelationEvidence D) : DispersionRelationClosed D := by
  exact And.intro E.causalStructureClosed
    (And.intro E.analyticContinuationClosed E.physicalConstraintsClosed)

end DispersionTheoryDispersionRelationsArisingTheoremCanonicalLaneLean
end HautevilleHouse