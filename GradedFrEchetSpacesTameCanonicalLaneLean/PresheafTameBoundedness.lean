import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GradedFrechetSpacesTameCanonicalLaneLean.GradedFrechetBasicDefs

namespace HautevilleHouse
namespace GradedFrechetSpacesTameCanonicalLaneLean

structure PresheafTameStructure where
  gradingIndex : Type
  presheaf : Type → Type
  restrictions : Prop
  tameRestrictionEstimate : Prop

structure PresheafTameEvidence (P : PresheafTameStructure) where
  restrictionsClosed : P.restrictions
  tameRestrictionEstimateClosed : P.tameRestrictionEstimate

def PresheafTameClosed (P : PresheafTameStructure) : Prop :=
  P.restrictions ∧ P.tameRestrictionEstimate

theorem presheaf_tame_closed_from_evidence (P : PresheafTameStructure) (E : PresheafTameEvidence P) : PresheafTameClosed P := by
  exact And.intro E.restrictionsClosed E.tameRestrictionEstimateClosed

end GradedFrechetSpacesTameCanonicalLaneLean
end HautevilleHouse
