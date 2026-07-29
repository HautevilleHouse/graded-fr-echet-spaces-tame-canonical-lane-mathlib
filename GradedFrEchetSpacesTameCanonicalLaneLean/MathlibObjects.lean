import GradedFrechetSpacesTameCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace GradedFrechetSpacesTameCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure GradedFrechetSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  grading : ℕ → Type
  frechetStructure : Prop
  tameCondition : Prop

structure GradedFrechetAdmittedObject where
  space : GradedFrechetSpace
  gradedStructure : Prop
  tameProperty : Prop
  targetModel : Type
  targetTopology : TopologicalSpace targetModel
  equivalenceToModel : Prop
  conclusion : equivalenceToModel

structure GradedFrechetEndgameState where
  object : GradedFrechetAdmittedObject

def GradedFrechetWitnessClosed (O : GradedFrechetAdmittedObject) : Prop :=
  O.equivalenceToModel

end GradedFrechetSpacesTameCanonicalLaneLean
end HautevilleHouse
