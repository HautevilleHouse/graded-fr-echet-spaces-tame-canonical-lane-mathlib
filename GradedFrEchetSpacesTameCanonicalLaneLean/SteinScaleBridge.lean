import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.TameGradedFrechetSpacesCanonicalLaneLean.TameGradedFrechetDomain

namespace HautevilleHouse
namespace TameGradedFrechetSpacesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  match A.object with
  | GradedFrechetObject _ _ _ b => b (λ x => x)

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  unfold bridgeClosed
  -- The object's conclusion supplies the tame bound
  exact A.object.conclusion

end TameGradedFrechetSpacesCanonicalLaneLean
end HautevilleHouse