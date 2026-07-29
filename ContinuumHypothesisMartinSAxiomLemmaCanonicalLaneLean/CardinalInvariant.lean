import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuumHypothesisMartinSAxiomLemmaCanonicalLaneLean

structure CardinalInvariantPackage {F : ForcingExtensionPackage}
    (M : MartinAxiomPackage F) where
  continuum : Type u
  alephOne : Type v
  cardinalRelation : Prop
  invariantPreservedUnderForcing : Prop

structure CardinalInvariantEvidence {F : ForcingExtensionPackage}
    {M : MartinAxiomPackage F} (C : CardinalInvariantPackage M) where
  cardinalRelationClosed : C.cardinalRelation
  invariantPreservedUnderForcingClosed : C.invariantPreservedUnderForcing

def CardinalInvariantClosed {F : ForcingExtensionPackage}
    {M : MartinAxiomPackage F} (C : CardinalInvariantPackage M) : Prop :=
  C.cardinalRelation ∧ C.invariantPreservedUnderForcing

theorem cardinal_invariant_closed_from_evidence
    {F : ForcingExtensionPackage} {M : MartinAxiomPackage F}
    (C : CardinalInvariantPackage M) (E : CardinalInvariantEvidence C) :
    CardinalInvariantClosed C := by
  exact And.intro E.cardinalRelationClosed E.invariantPreservedUnderForcingClosed

end ContinuumHypothesisMartinSAxiomLemmaCanonicalLaneLean
end HautevilleHouse