import canonicalLaneMathlib.AdmissibleClass
import GradedFrEchetSpacesTameCanonicalLaneLean.TameOperator

namespace HautevilleHouse
namespace GradedFrEchetSpacesTameCanonicalLaneLean

structure ImplicitFunctionTheorem (G : GradedFrechetSpace) where
  sourceSpace : GradedFrechetSpace
  targetSpace : GradedFrechetSpace
  mapping : G.carrier → sourceSpace.carrier → targetSpace.carrier
  frechetDerivative : TameOperator G
  invertibilityAtPoint : Prop
  localExistence : Prop
  invertibilityAtPointClosed : invertibilityAtPoint
  localExistenceClosed : localExistence

structure ImplicitFunctionEvidence {G : GradedFrechetSpace}
    (I : ImplicitFunctionTheorem G) where
  invertibilityAtPointClosed : I.invertibilityAtPoint
  localExistenceClosed : I.localExistence

def ImplicitFunctionClosed {G : GradedFrechetSpace}
    (I : ImplicitFunctionTheorem G) : Prop :=
  I.invertibilityAtPoint ∧ I.localExistence

theorem implicit_function_closed_from_evidence {G : GradedFrechetSpace}
    (I : ImplicitFunctionTheorem G) (E : ImplicitFunctionEvidence I) :
    ImplicitFunctionClosed I := by
  exact And.intro E.invertibilityAtPointClosed E.localExistenceClosed

end GradedFrEchetSpacesTameCanonicalLaneLean
end HautevilleHouse