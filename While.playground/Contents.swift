// While

import UIKit
import Foundation

var i = 5
var sum = 0

while i < 10 {
    sum += i
    i += 1
    print(sum)
}

// Repeat while

var n = 1
var res = 0

repeat {
    res += n
    n += 1
    print(res)
} while n <= 10

// Continue

for i in 1...10 {
    if i % 2 == 0 {
        continue
    } else {
        print(i)
    }
}

// Break

for i in 1...10 {
    var randNum = Int(arc4random_uniform(10))
    if randNum == 5 {
        print("Iteration num is \(i)")
        break
    }
}

// Метки

mainLoop: for i in 1...10 {
    for y in 1...10 {
        if y == 4 && i == 8 {
            break mainLoop
        }
        print("\(i) - \(y)")
    }
}