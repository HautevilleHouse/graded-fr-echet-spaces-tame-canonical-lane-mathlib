import GradedFrechetSpacesTameCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace GradedFrechetSpacesTameCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end GradedFrechetSpacesTameCanonicalLaneLean
end HautevilleHouse
