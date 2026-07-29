import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DispersionTheoryDispersionRelationsArisingTheoremCanonicalLaneLean

structure ForwardDispersionRelation (A : AdmissibleClass) where
  amplitude : ScatteringAmplitude A.object
  fixedMomentum : ℝ
  dispersionIntegral : Prop
  realPartRelation : Prop
  imaginaryPartRelation : Prop
  integralClosed : dispersionIntegral
  realPartClosed : realPartRelation
  imaginaryPartClosed : imaginaryPartRelation

end DispersionTheoryDispersionRelationsArisingTheoremCanonicalLaneLean
end HautevilleHouse