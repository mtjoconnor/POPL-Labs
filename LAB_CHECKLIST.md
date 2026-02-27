# Spec Checklist

## Lab 1: Functional vs Imperative
- [x] Implement `append` in Fun.
- [x] Implement `concat` in Fun.
- [x] Add nested list fixture `yyy` and test mixed nesting.
- [x] Implement general `flatten` with `flatten(6) = [6]`.
- [x] Implement recursive `flatsum`.
- [x] Implement tail-recursive `flatsum1`.
- [x] Implement loop-based (non-recursive) `flatsum2`.
- [x] Provide report/comments on testing.

## Lab 2: Memory and call-by-name
- [x] Change function representation to name-parameter semantics.
- [x] Update apply/eval/abstract/primitive pipeline for call-by-name.
- [x] Validate Jensen's device (`jensen.fun`).
- [x] Run experiments showing: (1) fresh re-evaluation of name parameters, (2) non-evaluation of unused parameters.
- [x] Answer all written questions marked in spec.
- [x] Optional: explicit thunk representation implemented.

## Lab 3: Loops with exit
- [x] Extend syntax and parser for `loop` and `exit`.
- [x] Implement first (`Maybe`-based) model in `Fungol.hs`.
- [x] Add top-level uncaught-exit diagnostics.
- [x] Evaluate three problematic programs from section 3.3.
- [x] Implement continuation-based model in `FungolCont.hs`.
- [x] Capture static exit continuation in procedure definitions.
- [x] Provide report explaining comparative outcomes.

## Delivery Requirements
- [x] Per-lab `TEST_COMMANDS.txt` with build + required tests + custom edge/error tests + expected outcomes.
- [x] Per-lab report files with implementation/testing notes and required written answers.
- [x] Root README with purpose and run instructions.
- [ ] Commit/push: blocked because this workspace is not initialized as a Git repository.
