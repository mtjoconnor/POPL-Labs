-- Section 3.3 experiments as direct expressions.

-- Program 1
let rec f() = exit in loop f();;

-- Program 2
loop (let rec f() = exit in f());;

-- Program 3: dynamic model yields 3, continuation model yields 0.
let val x = 0 in
  loop (
    let rec f() = exit in loop (f());
    x := x + 1;
    if x > 2 then exit else nil
  );
  x;;
