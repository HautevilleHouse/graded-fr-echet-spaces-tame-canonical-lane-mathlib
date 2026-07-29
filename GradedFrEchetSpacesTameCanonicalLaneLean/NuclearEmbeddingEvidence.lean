import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.TameGradedFrechetSpacesCanonicalLaneLean.TameGradedFrechetDomain
import HautevilleHouse.TameGradedFrechetSpacesCanonicalLaneLean.DualPairingEvidence

namespace HautevilleHouse
namespace TameGradedFrechetSpacesCanonicalLaneLean

structure NuclearEmbeddingPackage where
  domain : GradedFrechetObject
  codomain : GradedFrechetObject
  embeddingMap : domain.carrier → codomain.carrier
  nuclearFactorization : Prop
  tameEstimate : Prop

structure NuclearEmbeddingEvidence (N : NuclearEmbeddingPackage) where
  nuclearFactorizationClosed : N.nuclearFactorization
  tameEstimateClosed : N.tameEstimate

def NuclearEmbeddingClosed (N : NuclearEmbeddingPackage) : Prop :=
  N.nuclearFactorization ∧ N.tameEstimate

theorem nuclear_embedding_closed_from_evidence (N : NuclearEmbeddingPackage)
    (E : NuclearEmbeddingEvidence N) : NuclearEmbeddingClosed N := by
  exact And.intro E.nuclearFactorizationClosed E.tameEstimateClosed

end TameGradedFrechetSpacesCanonicalLaneLean
end HautevilleHouse