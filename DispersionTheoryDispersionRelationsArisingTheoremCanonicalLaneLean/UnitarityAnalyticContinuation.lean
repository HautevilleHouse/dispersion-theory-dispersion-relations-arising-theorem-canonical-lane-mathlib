import PoincareConjectureCanonicalLaneLean.MandelstamRepresentation

namespace HautevilleHouse
namespace DispersionTheoryDispersionRelationsArisingTheoremCanonicalLaneLean

structure UnitarityAnalyticContinuationPackage
    {D : DispersionRelationPackage}
    (M : MandelstamRepresentationPackage D) where
  partialWaveUnitarity : Prop
  branchCutStructure : Prop
  discontinuityFormula : Prop
  spectralFunctionPositivity : Prop

structure UnitarityAnalyticContinuationEvidence
    {D : DispersionRelationPackage}
    {M : MandelstamRepresentationPackage D}
    (U : UnitarityAnalyticContinuationPackage M) where
  partialWaveUnitarityClosed : U.partialWaveUnitarity
  branchCutStructureClosed : U.branchCutStructure
  discontinuityFormulaClosed : U.discontinuityFormula
  spectralFunctionPositivityClosed : U.spectralFunctionPositivity

def UnitarityAnalyticContinuationClosed
    {D : DispersionRelationPackage}
    {M : MandelstamRepresentationPackage D}
    (U : UnitarityAnalyticContinuationPackage M) : Prop :=
  U.partialWaveUnitarity ∧ U.branchCutStructure ∧
  U.discontinuityFormula ∧ U.spectralFunctionPositivity

theorem unitarity_analytic_continuation_closed_from_evidence
    {D : DispersionRelationPackage}
    {M : MandelstamRepresentationPackage D}
    (U : UnitarityAnalyticContinuationPackage M)
    (E : UnitarityAnalyticContinuationEvidence U) :
    UnitarityAnalyticContinuationClosed U := by
  exact And.intro E.partialWaveUnitarityClosed
    (And.intro E.branchCutStructureClosed
      (And.intro E.discontinuityFormulaClosed E.spectralFunctionPositivityClosed))

end DispersionTheoryDispersionRelationsArisingTheoremCanonicalLaneLean
end HautevilleHouse