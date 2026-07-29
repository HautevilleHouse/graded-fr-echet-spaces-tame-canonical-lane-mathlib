import GradedFrechetSpacesTameCanonicalLaneLean.Geometrization
import Mathlib.Topology.Algebra.Frechet

/-!
# Endpoint Classification Package
-/

namespace HautevilleHouse
namespace GradedFrechetSpacesTameCanonicalLaneLean

structure EndpointClassificationPackage {G : GradedFrechetStructurePackage}
    {T : TameConditionPackage G} {S : SteinInterpolationPackage T}
    {P : ProjectiveTensorProductPackage S} {Z : GeometrizationPackage P} where
  targetSpace : Type u
  targetTopology : TopologicalSpace targetSpace
  gradedFrechetTarget : Prop
  equivalenceToModel : ContinuousMap.HomotopyEquiv targetSpace (ModelSpace)
  endpointMatchesTameStatement : Prop

structure EndpointClassificationEvidence {G : GradedFrechetStructurePackage}
    {T : TameConditionPackage G} {S : SteinInterpolationPackage T}
    {P : ProjectiveTensorProductPackage S} {Z : GeometrizationPackage P}
    (Epkg2 : EndpointClassificationPackage Z) where
  gradedFrechetTargetClosed : Epkg2.gradedFrechetTarget
  endpointMatchesTameStatementClosed : Epkg2.endpointMatchesTameStatement

def EndpointClassificationClosed {G : GradedFrechetStructurePackage}
    {T : TameConditionPackage G} {S : SteinInterpolationPackage T}
    {P : ProjectiveTensorProductPackage S} {Z : GeometrizationPackage P}
    (Epkg2 : EndpointClassificationPackage Z) : Prop :=
  Epkg2.gradedFrechetTarget ∧ Epkg2.endpointMatchesTameStatement

theorem endpoint_classification_closed_from_evidence
    {G : GradedFrechetStructurePackage}
    {T : TameConditionPackage G} {S : SteinInterpolationPackage T}
    {P : ProjectiveTensorProductPackage S} {Z : GeometrizationPackage P}
    (Epkg2 : EndpointClassificationPackage Z)
    (E : EndpointClassificationEvidence Epkg2) : EndpointClassificationClosed Epkg2 := by
  exact And.intro E.gradedFrechetTargetClosed E.endpointMatchesTameStatementClosed

theorem endpoint_classification_supplies_mathlib_statement
    {G : GradedFrechetStructurePackage}
    {T : TameConditionPackage G} {S : SteinInterpolationPackage T}
    {P : ProjectiveTensorProductPackage S} {Z : GeometrizationPackage P}
    (Epkg2 : EndpointClassificationPackage Z) :
    ContinuousMap.HomotopyEquiv Epkg2.targetSpace (ModelSpace) :=
  Epkg2.equivalenceToModel

end GradedFrechetSpacesTameCanonicalLaneLean
end HautevilleHouse
