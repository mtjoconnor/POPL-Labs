-- Lab 1 solutions and test fixtures.

-- Nested-list fixtures from the spec.
val xxx = list(list(1, 2), nil, list(3, 4));;
val yyy = list(1, list(2, 3), list(4, list(5), 6));;

-- append([x1, ..., xn], ys) = [x1, ..., xn, ...ys]
rec append(xs, ys) =
  if xs = nil then ys else head(xs) : append(tail(xs), ys);;

-- concat([xs1, ..., xsn]) = xs1 ++ ... ++ xsn
rec concat(xss) =
  if xss = nil then nil else append(head(xss), concat(tail(xss)));;

-- flatten works on both integers and nested lists.
-- In particular, flatten(6) = [6].
rec flatten(x) =
  if integer(x) then list(x)
  else if x = nil then nil
  else append(flatten(head(x)), flatten(tail(x)));;

-- Direct recursive sum over nested lists.
rec flatsum(x) =
  if integer(x) then x
  else if x = nil then 0
  else flatsum(head(x)) + flatsum(tail(x));;

-- Tail-recursive flatsum using an explicit stack of pending list tails.
val flatsum1(x0) =
  let rec loop(x, todo, s) =
    if integer(x) then
      if todo = nil then s + x else loop(head(todo), tail(todo), s + x)
    else if x = nil then
      if todo = nil then s else loop(head(todo), tail(todo), s)
    else
      loop(head(x), tail(x) : todo, s)
  in
    loop(x0, nil, 0);;

-- Loop-only version (no recursion) of flatsum.
val flatsum2(x0) =
  let val x = new() in
  let val todo = new() in
  let val s = new() in
  x := x0; todo := nil; s := 0;
  while if !x = nil then !todo <> nil else true do
    if integer(!x) then
      (s := !s + !x;
       if !todo = nil then x := nil else (x := head(!todo); todo := tail(!todo)))
    else if !x = nil then
      if !todo = nil then x := nil else (x := head(!todo); todo := tail(!todo))
    else
      (todo := tail(!x) : !todo; x := head(!x));
  !s;;
