import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuumHypothesisMartinSAxiomLemmaCanonicalLaneLean

structure CardinalInvariantsPackage where
  continuumCardinal : ℕ
  alephOneCardinal : ℕ
  chInequality : Prop
  chCardinalRelation : Prop

structure CardinalInvariantsEvidence (C : CardinalInvariantsPackage) where
  continuumCardinalDefined : C.continuumCardinal = 2^ℕ₀
  alephOneCardinalDefined : C.alephOneCardinal = ℵ₁
  chInequalityClosed : C.chInequality
  chCardinalRelationClosed : C.chCardinalRelation

def CardinalInvariantsClosed (C : CardinalInvariantsPackage) : Prop :=
  C.chInequality ∧ C.chCardinalRelation

theorem cardinal_invariants_closed_from_evidence (C : CardinalInvariantsPackage)
    (E : CardinalInvariantsEvidence C) : CardinalInvariantsClosed C :=
  And.intro E.chInequalityClosed E.chCardinalRelationClosed

end ContinuumHypothesisMartinSAxiomLemmaCanonicalLaneLean
end HautevilleHouse
