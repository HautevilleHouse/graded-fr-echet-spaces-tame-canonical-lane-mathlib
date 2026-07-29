import canonicalLaneMathlib.AdmissibleClass
import GradedFrEchetSpacesTameCanonicalLaneLean.BridgeLemmas
import GradedFrEchetSpacesTameCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace GradedFrEchetSpacesTameCanonicalLaneLean

def ConstrainedTameClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_tame_endgame (A : AdmissibleClass) :
    ConstrainedTameClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GradedFrEchetSpacesTameCanonicalLaneLean
end HautevilleHouse