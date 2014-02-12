(* $Id: glibivyprobe.ml 1131 2005-04-29 09:35:43Z buisson $ *)

let _ =
  Ivyprobe.init ();
  try
    ignore (GlibIvy.set_up_channel Unix.stdin Ivy.stop (fun _ -> Ivyprobe.read stdin));
    GlibIvy.main ()
  with
    End_of_file -> Ivy.stop ()
