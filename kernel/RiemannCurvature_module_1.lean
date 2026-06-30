import Mathlib.Geometry.Manifold.RiemannianMetric
import Mathlib.Analysis.Calculus.Deriv.Basic


/--
  TRUONGCORE V128 - RIEMANN CURVATURE TENSOR
  Objective: Formal definition of the curvature tensor field R(X, Y)Z
  Status: INITIALIZED
--/

open Manifold

variable {M : Type*} [TopologicalSpace M] [ChartedSpace (EuclideanSpace ℝ (Fin 4)) M]
variable [SmoothManifoldWithCorners (model_at (EuclideanSpace ℝ (Fin 4)) 0) M]
variable [IsRiemannianManifold (model_at (EuclideanSpace ℝ (Fin 4)) 0) M]

/-- Definition of the Riemann Curvature Tensor field --/