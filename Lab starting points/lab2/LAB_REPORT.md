# Lab 2 Report

## Implemented Tasks
Modified `FunLab2.hs` to implement call-by-name:
- function values now receive unevaluated arguments,
- application passes unevaluated arguments,
- variable lookup forces parameter thunks,
- abstraction binds parameters as `Param` objects,
- primitive application forces arguments to preserve call-by-value primitive behavior.

## Optional Extension Included
Implemented the optional explicit representation of name parameters:
- Added `Thunk` (`Thunk Expr Env`).
- Replaced implicit `M Value` parameter representation with explicit thunks.
- Added `force` and `values` helpers.

## Written Questions
1. Can we show that actual parameters are evaluated afresh each use, and not evaluated when unused?
- Yes.
- With `twice((x := !x + 1; !x))`, the argument expression is used twice, producing result `3` and final `!x = 2`, proving re-evaluation on each use.
- With `ignore(1 div 0)`, result is `42` with no divide-by-zero, proving unused arguments are not evaluated.

2. How can Jensen's device be achieved in call-by-value Fun (with lambdas), and does it work in modified Fun?
- In call-by-value, pass an explicit thunk: `f = lambda () expr`, then call `f()` each iteration.
- This approach also works in modified call-by-name Fun. Verified by `go_thunk()` returning `285`.

## Testing Summary
- `jensen.fun` runs and `go()` returns `285`.
- Fresh-evaluation and non-evaluation experiments pass.
- Expected-failure path checked: used argument `twice(1 div 0)` raises divide-by-zero.

## Result
Mandatory Lab 2 tasks complete; optional thunk extension also complete.
