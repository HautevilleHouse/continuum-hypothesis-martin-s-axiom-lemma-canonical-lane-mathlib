import ContinuumHypothesisMartinSAxiomLemmaCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace ContinuumHypothesisMartinSAxiomLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure CHStructure where
  carrier : Type
  topology : TopologicalSpace carrier

structure CHAdmittedObject where
  space : CHStructure
  infiniteCardinal : Prop
  wellOrdered : Prop
  continuumHypothesis : Prop
  martinAxiom : Prop
  conclusion : continuumHypothesis ∧ martinAxiom

structure CHEndgameState where
  object : CHAdmittedObject

def CHWitnessClosed (O : CHAdmittedObject) : Prop :=
  O.continuumHypothesis ∧ O.martinAxiom

end ContinuumHypothesisMartinSAxiomLemmaCanonicalLaneLean
end HautevilleHouse