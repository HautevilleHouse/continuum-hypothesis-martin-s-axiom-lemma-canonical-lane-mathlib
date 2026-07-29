import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuumHypothesisMartinSAxiomLemmaCanonicalLaneLean

structure AbsolutenessLemmaPackage where
  innerModel : Type u
  formulaComplexity : ℕ
  downwardAbsoluteness : Prop
  upwardAbsoluteness : Prop
  sigmaOneOne : Prop
  piOneOne : Prop

structure AbsolutenessLemmaEvidence (A : AbsolutenessLemmaPackage) where
  downwardAbsolutenessClosed : A.downwardAbsoluteness
  upwardAbsolutenessClosed : A.upwardAbsoluteness
  sigmaOneOneClosed : A.sigmaOneOne
  piOneOneClosed : A.piOneOne

def AbsolutenessLemmaClosed (A : AbsolutenessLemmaPackage) : Prop :=
  A.downwardAbsoluteness ∧ A.upwardAbsoluteness ∧ A.sigmaOneOne ∧ A.piOneOne

theorem absoluteness_lemma_closed_from_evidence (A : AbsolutenessLemmaPackage)
    (E : AbsolutenessLemmaEvidence A) : AbsolutenessLemmaClosed A := by
  exact And.intro E.downwardAbsolutenessClosed
    (And.intro E.upwardAbsolutenessClosed
      (And.intro E.sigmaOneOneClosed E.piOneOneClosed))

end ContinuumHypothesisMartinSAxiomLemmaCanonicalLaneLean
end HautevilleHouse