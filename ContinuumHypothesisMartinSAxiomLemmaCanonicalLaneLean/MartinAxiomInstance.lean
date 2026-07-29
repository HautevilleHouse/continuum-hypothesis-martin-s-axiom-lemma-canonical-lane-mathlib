import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuumHypothesisMartinSAxiomLemmaCanonicalLaneLean

structure MartinAxiomPackage where
  cccCondition : Prop
  denseSetIntersection : Prop
  cardinalBound : ℕ
  maTheorem : Prop

structure MartinAxiomEvidence (M : MartinAxiomPackage) where
  cccConditionClosed : M.cccCondition
  denseSetIntersectionClosed : M.denseSetIntersection
  cardinalBoundClosed : M.cardinalBound = ℵ₁
  maTheoremClosed : M.maTheorem

def MartinAxiomClosed (M : MartinAxiomPackage) : Prop :=
  M.cccCondition ∧ M.denseSetIntersection ∧ (M.cardinalBound = ℵ₁) ∧ M.maTheorem

theorem martin_axiom_closed_from_evidence (M : MartinAxiomPackage)
    (E : MartinAxiomEvidence M) : MartinAxiomClosed M :=
  And.intro E.cccConditionClosed (And.intro E.denseSetIntersectionClosed
    (And.intro E.cardinalBoundClosed E.maTheoremClosed))

end ContinuumHypothesisMartinSAxiomLemmaCanonicalLaneLean
end HautevilleHouse
