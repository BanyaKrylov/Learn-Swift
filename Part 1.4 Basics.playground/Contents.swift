// Работа с логическими операторами

import UIKit

var boolTrue = true
var boolFalse = false

let boolResult1 = boolTrue && boolFalse
let boolResult2 = boolTrue || boolFalse

print(boolResult1, boolResult2)

var result1 = (true && false) || true
var result2 = true && false && false || (true || false)
var result3 = false || (false || true) && (true && false)
