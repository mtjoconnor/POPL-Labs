# Lab 1 Report

## Implemented Tasks
Implemented in `script.fun`:
- `append`
- `concat`
- test fixtures `xxx`, `yyy`
- `flatten` (general, including integer base case)
- `flatsum` (direct recursion)
- `flatsum1` (tail recursion with explicit pending-list stack)
- `flatsum2` (loop-only imperative version with mutable state)

## Notes on Transformation
`flatsum1` introduces an explicit `todo` stack so recursive work is tail-position only.
`flatsum2` maps that state (`x`, `todo`, `s`) to mutable references and a `while` loop.

## Testing Summary
- Provided examples (`examples.fun`) and imperative factorial (`facimp.fun`) both run as expected.
- `append`, `concat`, `flatten`, `flatsum`, `flatsum1`, and `flatsum2` agree on canonical nested-list inputs.
- Error path verified: `concat(yyy)` fails because `concat` expects list-of-lists and eventually applies list primitives to integers.

## Result
All required Lab 1 tasks complete.
