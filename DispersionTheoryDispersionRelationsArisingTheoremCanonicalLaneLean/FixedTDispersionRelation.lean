import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DispersionTheoryDispersionRelationsArisingTheoremCanonicalLaneLean

structure FixedTDispersionPackage (D : DispersionRelationPackage) (F : ForwardDispersionPackage D) where
  fixedTMomentumTransfer : Prop
  partialWaveExpansion : Prop
  fixedTDispersionRelationDerived : Prop

structure FixedTDispersionEvidence {D : DispersionRelationPackage} {F : ForwardDispersionPackage D}
    (T : FixedTDispersionPackage D F) where
  fixedTMomentumTransferClosed : T.fixedTMomentumTransfer
  partialWaveExpansionClosed : T.partialWaveExpansion
  fixedTDispersionRelationDerivedClosed : T.fixedTDispersionRelationDerived

def FixedTDispersionClosed {D : DispersionRelationPackage} {F : ForwardDispersionPackage D}
    (T : FixedTDispersionPackage D F) : Prop :=
  T.fixedTMomentumTransfer ∧ T.partialWaveExpansion ∧ T.fixedTDispersionRelationDerived

theorem fixed_t_dispersion_closed_from_evidence
    {D : DispersionRelationPackage} {F : ForwardDispersionPackage D}
    (T : FixedTDispersionPackage D F) (E : FixedTDispersionEvidence T) :
    FixedTDispersionClosed T := by
  exact And.intro E.fixedTMomentumTransferClosed
    (And.intro E.partialWaveExpansionClosed E.fixedTDispersionRelationDerivedClosed)

end DispersionTheoryDispersionRelationsArisingTheoremCanonicalLaneLean
end HautevilleHouse