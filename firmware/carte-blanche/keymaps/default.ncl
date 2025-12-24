let { tap, hold, td, combo, .. } = import "fak/keycode.ncl" in

# We alias commonly used stuff, so we don't end up repeating them over and over.
let kc = tap.reg.kc in
let XXXX = tap.none & hold.none in
let TTTT = tap.trans & hold.trans in

let base_layer = [
  [
    kc.A,    kc.B,             kc.C,    kc.D,
    kc.E,    kc.F,    kc.G,    kc.H,    kc.I,
    kc.J,    kc.K,    kc.L,    kc.M,    kc.N,
  ],
] in

{
  virtual_keys = [],
  layers = base_layer,
}