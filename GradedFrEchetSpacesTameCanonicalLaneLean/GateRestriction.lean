import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.TameGradedFrechetSpacesCanonicalLaneLean.SteinScaleBridge

namespace HautevilleHouse
namespace TameGradedFrechetSpacesCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end TameGradedFrechetSpacesCanonicalLaneLean
end HautevilleHouse