import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuumHypothesisMartinSAxiomLemmaCanonicalLaneLean

structure IndependenceModelPackage where
  forcingExtension : Prop
  chHolds : Prop
  chFails : Prop
  consistencyResult : Prop

structure IndependenceModelEvidence (I : IndependenceModelPackage) where
  forcingExtensionClosed : I.forcingExtension
  chHoldsClosed : I.chHolds
  chFailsClosed : I.chFails
  consistencyResultClosed : I.consistencyResult

def IndependenceModelClosed (I : IndependenceModelPackage) : Prop :=
  I.forcingExtension ∧ I.chHolds ∧ I.chFails ∧ I.consistencyResult

theorem indifference_model_closed_from_evidence (I : IndependenceModelPackage)
    (E : IndependenceModelEvidence I) : IndependenceModelClosed I :=
  And.intro E.forcingExtensionClosed (And.intro E.chHoldsClosed
    (And.intro E.chFailsClosed E.consistencyResultClosed))

end ContinuumHypothesisMartinSAxiomLemmaCanonicalLaneLean
end HautevilleHouse
