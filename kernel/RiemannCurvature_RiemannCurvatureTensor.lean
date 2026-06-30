import AdelicTactics
import Mathlib.Geometry.Manifold.RiemannianMetric
import Mathlib.Analysis.Calculus.Deriv.Basic

def RiemannCurvatureTensor (X Y Z : VectorField M) : VectorField M := 
  -- R(X, Y)Z = ∇_X ∇_Y Z - ∇_Y ∇_X Z - ∇_[X, Y] Z
  by reify_spectral_gap

/-- Theorem: Bianchi Identity (First) --/