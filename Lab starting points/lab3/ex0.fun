-- Basic loop/exit example from the lab text.
rec loop0() =
  let val x = 0 in
  loop (
    x := x + 2;
    if x > 3 then exit else nil;
    x := x + 3
  );
  x;;
