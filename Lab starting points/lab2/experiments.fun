-- Call-by-name experiments for Lab 2.

-- Parameter is evaluated afresh each time it is used.
val twice(y) = y + y;;

-- Parameter is not evaluated at all if never used.
val ignore(y) = 42;;

-- Jensen's device encoded in call-by-value style using an explicit thunk.
val sum_thunk(i, a, b, f) =
  let val s = new() in
  i := a; s := 0;
  while !i < b do (s := !s + f(); i := !i + 1);
  !s;;

val go_thunk() =
  let val i = new() in
  sum_thunk(i, 0, 10, lambda () !i * !i);;
