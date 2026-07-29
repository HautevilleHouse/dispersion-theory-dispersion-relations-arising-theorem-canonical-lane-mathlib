import HautevilleHouse.DispersionTheoryDispersionRelationsArisingTheoremCanonicalLaneLean.TheoremStatement
import canonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace DispersionTheoryDispersionRelationsArisingTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure DispersionSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure DispersionAdmittedObject where
  space : DispersionSpace
  crossingRelationEstablished : Prop
  finiteEnergySummation : Prop
  analyticContinuation : Prop
  crossingConclusion : crossingRelationEstablished

structure DispersionEndgameState where
  object : DispersionAdmittedObject

def DispersionWitnessClosed (O : DispersionAdmittedObject) : Prop :=
  O.crossingRelationEstablished

end DispersionTheoryDispersionRelationsArisingTheoremCanonicalLaneLean
end HautevilleHouse