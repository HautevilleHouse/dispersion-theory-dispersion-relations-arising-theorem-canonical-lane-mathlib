import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DispersionTheoryDispersionRelationsArisingTheoremCanonicalLaneLean

structure ScatteringAmplitude (s : Type) where
  energy : s → ℝ
  momentum : s → ℝ
  crossesSymmetry : Prop
  analyticContinuationDomain : Prop
  crossingCondition : crossesSymmetry
  analyticExtension : analyticContinuationDomain

end DispersionTheoryDispersionRelationsArisingTheoremCanonicalLaneLean
end HautevilleHouse