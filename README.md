# POPL Lab Submission (Labs 1-3)

This workspace contains completed implementations and reports for the POPL lab manual (`labman.pdf`).
Per instruction, page 4 of the manual was ignored.

## Repository Layout
- `Lab starting points/lab1`: Lab 1 interpreter and `script.fun` solution.
- `Lab starting points/lab2`: Lab 2 call-by-name interpreter and experiments.
- `Lab starting points/lab3`: Lab 3 syntax/parser updates and two interpreter models:
  - `Fungol.hs` (`Maybe`-based model)
  - `FungolCont.hs` (continuation-based model)

Each lab folder also includes:
- `LAB_REPORT.md`
- `TEST_COMMANDS.txt`

## Build and Run
### Lab 1
```bash
cd "Lab starting points/lab1"
ghc --make FunLab1.hs -main-is FunLab1 -o fun
./fun script.fun
```

### Lab 2
```bash
cd "Lab starting points/lab2"
ghc --make FunLab2.hs -main-is FunLab2 -o fun
./fun jensen.fun
```

### Lab 3
```bash
cd "Lab starting points/lab3"
ghc --make Fungol.hs -main-is Fungol -o fungol
ghc --make FungolCont.hs -main-is FungolCont -o fungol-cont
./fungol ex0.fun
./fungol-cont ex0.fun
```

## Validation Evidence
Use each lab's `TEST_COMMANDS.txt` for reproducible command-based validation, expected results, and expected-failure cases.

## Public Interface / API Change Notes
- Lab 1: No public interface changes.
- Lab 2: Language semantics changed from call-by-value to call-by-name for function parameters (required by spec).
- Lab 3: Language syntax extended with `loop` and `exit`; a second interpreter entrypoint (`FungolCont.hs`) was added for the continuation model.
