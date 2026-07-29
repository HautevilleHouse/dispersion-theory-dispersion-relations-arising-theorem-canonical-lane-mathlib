import HautevilleHouse.DispersionTheoryDispersionRelationsArisingTheoremCanonicalLaneLean.AdmissibleClass
import Mathlib.Analysis.Complex.Basic

namespace HautevilleHouse
namespace DispersionTheoryDispersionRelationsArisingTheoremCanonicalLaneLean

structure CrossingSymmetriesPackage where
  amplitudeFunction : ℂ → ℂ
  parityProperty : amplitudeFunction (-z) = amplitudeFunction z
  crossingRelation : Prop
  positivityAtHighEnergy : Prop

structure CrossingSymmetriesEvidence (C : CrossingSymmetriesPackage) where
  parityPropertyClosed : C.parityProperty
  crossingRelationClosed : C.crossingRelation
  positivityAtHighEnergyClosed : C.positivityAtHighEnergy

def CrossingSymmetriesClosed (C : CrossingSymmetriesPackage) : Prop :=
  C.parityProperty ∧ C.crossingRelation ∧ C.positivityAtHighEnergy

theorem crossing_symmetries_closed_from_evidence (C : CrossingSymmetriesPackage)
    (E : CrossingSymmetriesEvidence C) : CrossingSymmetriesClosed C := by
  exact And.intro E.parityPropertyClosed (And.intro E.crossingRelationClosed E.positivityAtHighEnergyClosed)

end DispersionTheoryDispersionRelationsArisingTheoremCanonicalLaneLean
end HautevilleHouse