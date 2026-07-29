import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuumHypothesisMartinSAxiomLemmaCanonicalLaneLean

structure CohomologyIndependencePackage {F : ForcingExtensionPackage}
    (M : MartinAxiomPackage F) where
  alephOnePreserved : Prop
  stationarySetIndependence : Prop
  cohomologyInvariant : Prop
  measurableCardinalBound : Prop

structure CohomologyIndependenceEvidence {F : ForcingExtensionPackage}
    {M : MartinAxiomPackage F} (C : CohomologyIndependencePackage M) where
  alephOnePreservedClosed : C.alephOnePreserved
  stationarySetIndependenceClosed : C.stationarySetIndependence
  cohomologyInvariantClosed : C.cohomologyInvariant
  measurableCardinalBoundClosed : C.measurableCardinalBound

def CohomologyIndependenceClosed {F : ForcingExtensionPackage}
    {M : MartinAxiomPackage F} (C : CohomologyIndependencePackage M) : Prop :=
  C.alephOnePreserved ∧ C.stationarySetIndependence ∧
  C.cohomologyInvariant ∧ C.measurableCardinalBound

theorem cohomology_independence_closed_from_evidence
    {F : ForcingExtensionPackage} {M : MartinAxiomPackage F}
    (C : CohomologyIndependencePackage M) (E : CohomologyIndependenceEvidence C) :
    CohomologyIndependenceClosed C := by
  exact And.intro E.alephOnePreservedClosed
    (And.intro E.stationarySetIndependenceClosed
      (And.intro E.cohomologyInvariantClosed E.measurableCardinalBoundClosed))

end ContinuumHypothesisMartinSAxiomLemmaCanonicalLaneLean
end HautevilleHouse