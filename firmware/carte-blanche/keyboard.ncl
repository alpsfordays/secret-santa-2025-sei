let { ColToRowKey, .. } = import "fak/keyboard.ncl" in
let { CH552T, .. } = import "fak/mcus.ncl" in

let MatrixKey = ColToRowKey in

{
  mcu = CH552T,
  matrix = {
    cols = [32, 14, 15, 13, 12],
    rows = [11, 31, 30]
  },
  usb_dev = {
    vendor_id = 65261, # 0xFEED
    product_id = 7,
    product_ver = 256, # 0x0100
  },
  keys =
    let M = MatrixKey in
    [
        M 0 0, M 1 0,        M 3 0, M 4 0,
        M 0 1, M 1 1, M 2 1, M 3 1, M 4 1,
        M 0 2, M 1 2, M 2 2, M 3 2, M 4 2,
    ]
}