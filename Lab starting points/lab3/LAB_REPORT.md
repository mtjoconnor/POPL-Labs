# Lab 3 Report

## Implemented Tasks
1. Extended syntax/parser:
- Added `Loop Expr` and `Exit` to `FunSyntax.hs`.
- Added lexer/parser support for `loop` and `exit` in `FunParser.hs`.

2. First model (`Maybe`-based abnormal termination):
- Implemented in `Fungol.hs`.
- Replaced monad with `Mem -> (Maybe a, Mem)`.
- Added `exit` and `orelse` operations.
- Added evaluator clauses for `loop` and `exit`.
- Updated top-level handling of uncaught exits.

3. Continuation-based model:
- Implemented in `FungolCont.hs`.
- Monad uses two continuations (exit + success).
- Added `callxc` / `withxc`.
- Procedure abstraction statically binds exit continuation.
- `elab` for recursive procedures captures current exit continuation.

## Section 3.3 Program Results
Using `experiments.fun`:

1. `let rec f() = exit in loop f();;`
- `Fungol` (`Maybe` model): `[]`
- `FungolCont` (continuation model): `***exit in main program***`

2. `loop (let rec f() = exit in f());;`
- `Fungol`: `[]`
- `FungolCont`: `[]`

3. Program with outer definition / inner invocation (tracked via `x`):
- `Fungol`: `3`
- `FungolCont`: `0`

These results match the dynamic-vs-static loop association discussion in the lab text.

## Additional Checks
- `ex0.fun` (`loop0`) returns `7` in both models.
- `exit;;` at top level produces `***exit in main program***` in both models.

## Result
All required Lab 3 tasks complete, including both interpreter variants.
