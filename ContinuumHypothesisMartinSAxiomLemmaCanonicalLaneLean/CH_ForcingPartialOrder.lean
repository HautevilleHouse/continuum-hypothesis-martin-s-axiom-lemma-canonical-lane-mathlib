import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuumHypothesisMartinSAxiomLemmaCanonicalLaneLean

structure ForcingPartialOrderPackage where
  poset : Type u
  leq : poset → poset → Prop
  refl : ∀ p, leq p p
  trans : ∀ p q r, leq p q → leq q r → leq p r
  antisymm : ∀ p q, leq p q → leq q p → p = q
  maxElement : poset
  maxElementLargest : ∀ p, leq p maxElement

structure ForcingPartialOrderEvidence (P : ForcingPartialOrderPackage) where
  reflClosed : P.refl
  transClosed : P.trans
  antisymmClosed : P.antisymm
  maxElementLargestClosed : P.maxElementLargest

def ForcingPartialOrderClosed (P : ForcingPartialOrderPackage) : Prop :=
  P.refl ∧ P.trans ∧ P.antisymm ∧ P.maxElementLargest

theorem forcing_partial_order_closed_from_evidence (P : ForcingPartialOrderPackage)
    (E : ForcingPartialOrderEvidence P) : ForcingPartialOrderClosed P :=
  And.intro E.reflClosed (And.intro E.transClosed (And.intro E.antisymmClosed E.maxElementLargestClosed))

end ContinuumHypothesisMartinSAxiomLemmaCanonicalLaneLean
end HautevilleHouse
