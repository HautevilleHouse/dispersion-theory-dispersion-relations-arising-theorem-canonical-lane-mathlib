import HautevilleHouse.DispersionTheoryDispersionRelationsArisingTheoremCanonicalLaneLean.DispersionRelations
import Mathlib.Analysis.Complex.Basic

namespace HautevilleHouse
namespace DispersionTheoryDispersionRelationsArisingTheoremCanonicalLaneLean

structure UnitarityBoundsPackage {C : CrossingSymmetriesPackage}
    (D : DispersionRelationsPackage C) where
  unitarityConstraint : Prop
  partialWaveBound : Prop
  amplitudeAbsorption : Prop

structure UnitarityBoundsEvidence {C : CrossingSymmetriesPackage}
    {D : DispersionRelationsPackage C} (U : UnitarityBoundsPackage D) where
  unitarityConstraintClosed : U.unitarityConstraint
  partialWaveBoundClosed : U.partialWaveBound
  amplitudeAbsorptionClosed : U.amplitudeAbsorption

def UnitarityBoundsClosed {C : CrossingSymmetriesPackage}
    {D : DispersionRelationsPackage C} (U : UnitarityBoundsPackage D) : Prop :=
  U.unitarityConstraint ∧ U.partialWaveBound ∧ U.amplitudeAbsorption

theorem unitarity_bounds_closed_from_evidence {C : CrossingSymmetriesPackage}
    {D : DispersionRelationsPackage C} (U : UnitarityBoundsPackage D)
    (E : UnitarityBoundsEvidence U) : UnitarityBoundsClosed U := by
  exact And.intro E.unitarityConstraintClosed
    (And.intro E.partialWaveBoundClosed E.amplitudeAbsorptionClosed)

end DispersionTheoryDispersionRelationsArisingTheoremCanonicalLaneLean
end HautevilleHouse