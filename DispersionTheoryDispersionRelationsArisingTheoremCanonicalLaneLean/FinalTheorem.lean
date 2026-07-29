import PoincareConjectureCanonicalLaneLean.BridgeLemmas
import PoincareConjectureCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace DispersionTheoryDispersionRelationsArisingTheoremCanonicalLaneLean

def ConstrainedDispersionClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_dispersion_endgame (A : AdmissibleClass) :
    ConstrainedDispersionClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DispersionTheoryDispersionRelationsArisingTheoremCanonicalLaneLean
end HautevilleHouse