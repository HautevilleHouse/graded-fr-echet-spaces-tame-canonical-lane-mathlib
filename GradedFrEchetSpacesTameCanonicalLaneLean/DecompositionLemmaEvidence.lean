import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.TameGradedFrechetSpacesCanonicalLaneLean.TameGradedFrechetDomain

namespace HautevilleHouse
namespace TameGradedFrechetSpacesCanonicalLaneLean

structure DecompositionLemmaPackage where
  space : GradedFrechetObject
  decompositionExists : Prop
  tameSplitting : Prop
  kernelClosed : Prop
  cokernelFiniteDim : Prop

structure DecompositionLemmaEvidence (D : DecompositionLemmaPackage) where
  decompositionExistsClosed : D.decompositionExists
  tameSplittingClosed : D.tameSplitting
  kernelClosedClosed : D.kernelClosed
  cokernelFiniteDimClosed : D.cokernelFiniteDim

def DecompositionLemmaClosed (D : DecompositionLemmaPackage) : Prop :=
  D.decompositionExists ∧ D.tameSplitting ∧ D.kernelClosed ∧ D.cokernelFiniteDim

theorem decomposition_lemma_closed_from_evidence (D : DecompositionLemmaPackage)
    (E : DecompositionLemmaEvidence D) : DecompositionLemmaClosed D := by
  exact And.intro E.decompositionExistsClosed
    (And.intro E.tameSplittingClosed
      (And.intro E.kernelClosedClosed E.cokernelFiniteDimClosed))

end TameGradedFrechetSpacesCanonicalLaneLean
end HautevilleHouse