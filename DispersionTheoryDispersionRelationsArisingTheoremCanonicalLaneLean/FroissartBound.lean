import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DispersionTheoryDispersionRelationsArisingTheoremCanonicalLaneLean

structure FroissartBoundPackage where
  totalCrossSection : Type u
  highEnergyLimit : Prop
  constantBoundExistance : Prop
  logarithmicBound : Prop

structure FroissartBoundEvidence (F : FroissartBoundPackage) where
  highEnergyLimitClosed : F.highEnergyLimit
  constantBoundExistanceClosed : F.constantBoundExistance
  logarithmicBoundClosed : F.logarithmicBound

def FroissartBoundClosed (F : FroissartBoundPackage) : Prop :=
  F.highEnergyLimit ∧ F.constantBoundExistance ∧ F.logarithmicBound

theorem froissart_bound_closed_from_evidence
    (F : FroissartBoundPackage) (E : FroissartBoundEvidence F) :
    FroissartBoundClosed F := by
  exact And.intro E.highEnergyLimitClosed
    (And.intro E.constantBoundExistanceClosed E.logarithmicBoundClosed)

end DispersionTheoryDispersionRelationsArisingTheoremCanonicalLaneLean
end HautevilleHouse