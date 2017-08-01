//: Функции

import UIKit

func printMessage() -> Void {
    print("Call func")
}

printMessage()

func sum(a: Int, b: Int, c: Int) -> Int {
    return a + b + c
}

print(sum(a: 3, b: 4, c: 6))
