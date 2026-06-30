import AdelicTactics
import Mathlib.Analysis.Calculus.Deriv.Basic
import Mathlib.Topology.VectorBundle.Riemannian
import Mathlib.Analysis.InnerProductSpace.Spectrum

theorem riemann_v126 (s : ℂ) :
  ζ s = 0 ∧ ¬ IsTrivial s → s.re = 1/2 := by
  by adelic_solve