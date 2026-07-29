import PoincareConjectureCanonicalLaneLean.UnitarityAnalyticContinuation

namespace HautevilleHouse
namespace DispersionTheoryDispersionRelationsArisingTheoremCanonicalLaneLean

structure PolologyAndSubtractionsPackage
    {D : DispersionRelationPackage}
    {M : MandelstamRepresentationPackage D}
    (U : UnitarityAnalyticContinuationPackage M) where
  poleIdentification : Prop
  residueConstraints : Prop
  subtractionConstantFixed : Prop
  finiteNumberSubtractions : Prop

structure PolologyAndSubtractionsEvidence
    {D : DispersionRelationPackage}
    {M : MandelstamRepresentationPackage D}
    {U : UnitarityAnalyticContinuationPackage M}
    (P : PolologyAndSubtractionsPackage U) where
  poleIdentificationClosed : P.poleIdentification
  residueConstraintsClosed : P.residueConstraints
  subtractionConstantFixedClosed : P.subtractionConstantFixed
  finiteNumberSubtractionsClosed : P.finiteNumberSubtractions

def PolologyAndSubtractionsClosed
    {D : DispersionRelationPackage}
    {M : MandelstamRepresentationPackage D}
    {U : UnitarityAnalyticContinuationPackage M}
    (P : PolologyAndSubtractionsPackage U) : Prop :=
  P.poleIdentification ∧ P.residueConstraints ∧
  P.subtractionConstantFixed ∧ P.finiteNumberSubtractions

theorem polology_and_subtractions_closed_from_evidence
    {D : DispersionRelationPackage}
    {M : MandelstamRepresentationPackage D}
    {U : UnitarityAnalyticContinuationPackage M}
    (P : PolologyAndSubtractionsPackage U)
    (E : PolologyAndSubtractionsEvidence P) :
    PolologyAndSubtractionsClosed P := by
  exact And.intro E.poleIdentificationClosed
    (And.intro E.residueConstraintsClosed
      (And.intro E.subtractionConstantFixedClosed E.finiteNumberSubtractionsClosed))

end DispersionTheoryDispersionRelationsArisingTheoremCanonicalLaneLean
end HautevilleHouse