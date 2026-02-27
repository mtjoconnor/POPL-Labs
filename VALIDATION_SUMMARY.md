# Validation Summary

## Overall
- Lab 1: PASS
- Lab 2: PASS
- Lab 3: PASS

## Lab 1
- Build: PASS
- Provided example programs (`examples.fun`, `facimp.fun`): PASS
- Custom feature tests (`append`, `concat`, `flatten`, `flatsum`, `flatsum1`, `flatsum2`): PASS
- Expected-failure (`concat(yyy)`): PASS (error observed)

## Lab 2
- Build: PASS
- Provided Jensen test (`go()`): PASS (`285`)
- Fresh re-evaluation / unused parameter experiments: PASS
- Optional thunk representation behavior: PASS
- Expected-failure (`twice(1 div 0)`): PASS (divide-by-zero observed)

## Lab 3
- Build both interpreters: PASS
- `ex0.fun` (`loop0()`): PASS (`7` in both models)
- Section 3.3 comparison tests: PASS (expected model differences observed)
- Top-level uncaught `exit`: PASS (diagnostic observed)

## Determinism
Repeated runs produced stable, consistent outputs for all listed commands.
