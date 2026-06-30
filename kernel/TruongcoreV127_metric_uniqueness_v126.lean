import AdelicTactics
import Mathlib.Analysis.Calculus.Deriv.Basic
import Mathlib.Topology.VectorBundle.Riemannian
import Mathlib.Analysis.InnerProductSpace.Spectrum

theorem metric_uniqueness_v126 {M : Type*} [TopologicalSpace M] [KStable M] (g : RiemannianMetric M) :
  IsCriticalPoint (InformationAction V126 g) →
  IsPositiveDefinite (Hessian (InformationAction V126 g)) →
  Unique g := by
  by adelic_solve