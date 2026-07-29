import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuumHypothesisMartinSAxiomLemmaCanonicalLaneLean

structure ContinuumHypothesisPackage where
  alephOne : ℕ → Prop
  cardinalInequality : Prop
  chStatement : Prop

def ContinuumHypothesisClosed (C : ContinuumHypothesisPackage) : Prop :=
  C.cardinalInequality ∧ C.chStatement

end ContinuumHypothesisMartinSAxiomLemmaCanonicalLaneLean
end HautevilleHouse
