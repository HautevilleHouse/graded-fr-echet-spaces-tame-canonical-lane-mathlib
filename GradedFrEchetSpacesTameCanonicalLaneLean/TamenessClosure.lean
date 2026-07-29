import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GradedFrechetSpacesTameCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace GradedFrechetSpacesTameCanonicalLaneLean

def ConstrainedTamenessClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_tameness_endgame (A : AdmissibleClass) : ConstrainedTamenessClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GradedFrechetSpacesTameCanonicalLaneLean
end HautevilleHouse
