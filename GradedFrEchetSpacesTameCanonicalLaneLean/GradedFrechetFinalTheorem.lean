import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GradedFrEchetSpacesTameCanonicalLaneLean

def ConstrainedGradedFrechetClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_graded_frechet_endgame (A : AdmissibleClass) :
    ConstrainedGradedFrechetClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GradedFrEchetSpacesTameCanonicalLaneLean
end HautevilleHouse