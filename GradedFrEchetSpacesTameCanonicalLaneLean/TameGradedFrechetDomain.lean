import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace TameGradedFrechetSpacesCanonicalLaneLean

structure GradedFrechetObject where
  carrier : Type u
  seminorms : List (carrier → ℝ)
  gradedStructure : List ℕ
  tameBound : List (carrier → carrier) → Prop

def tameProjection (X : GradedFrechetObject) : GradedFrechetObject := X

end TameGradedFrechetSpacesCanonicalLaneLean
end HautevilleHouse