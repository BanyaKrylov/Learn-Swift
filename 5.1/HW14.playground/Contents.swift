import UIKit
import Foundation

//Function

func printMessage() -> Void {
    print("Message send")
}
printMessage()

func printMessage1() -> () {
    print("Message send again")
}
printMessage1()


func printMessage2() {
    print("Message send again and again")
}
printMessage2()

func printCodeMessage(requestCode: Int) -> () {
    print("Request code = \(requestCode)")
}
printCodeMessage(requestCode: 200)

func sum(a: Int, b: Int, c:Int) -> () {
    print("Sum = \(a + b + c)")
}
sum(a: 2, b: 5, c: 10)

func sum1(a: Int, _ b: Int, c: Int) -> () {
    print("Sum 1 = \(a + b + c)")
}
sum1(a: 2, 6, c: 12)

func generateString(code: Int, _ text: String) -> String {
    var mutableText = text
    mutableText += String(code)
    return mutableText
}
generateString(code: 200, "Code:")

func changeValue(_ a: inout Int, _ b: inout Int) -> () {
    let tmp = a
    a = b
    b = tmp
}
var a = 150, b = 345
changeValue(&a, &b)
a
b

func generateString1(code: Int, message: String) -> String {
    let returnMessage = "Send message \(message) with code \(code)"
    return returnMessage
}

print(generateString1(code: 200, message: "OK"))

func printRequestString(codes:Int...) -> () {
    var codesString = ""
    for oneCode in codes {
        codesString += String(oneCode) + " "
    }
    print("Send requests \(codesString)")
}
printRequestString(codes: 200, 500, 400)
printRequestString(codes: 404)

func getCodeDescription(code: Int) -> (Int, String) {
    let description: String
    switch code {
    case 1...100:
        description = "Error"
    case 101...200:
        description = "Correct"
    default:
        description = "Unknown"
    }
    return (code, description)
}
print(getCodeDescription(code: 200))

func getCodeDescription1(code: Int) -> (code: Int, description: String) {
    let description: String
    switch code {
    case 1...100:
        description = "Error"
    case 101...200:
        description = "Correct"
    default:
        description = "Unknown"
    }
    return (code, description)
}
print(getCodeDescription1(code: 100))

func sumWallet(wallet: [Int]) -> Int {
    var sum = 0
    for oneBanknot in wallet {
        sum += oneBanknot
    }
    return sum
}
var wallet = [50, 100, 200, 500, 1000, 2000, 5000]

sumWallet(wallet: wallet)
wallet.append(7000)
sumWallet(wallet: wallet)

func sumWallet1(wallet: [Int]? = nil) -> Int? {
    var sum = 0
    if wallet == nil {
        return nil
    }
    for oneBanknot in wallet! {
        sum += oneBanknot
    }
    return sum
}
sumWallet1(wallet: wallet)
sumWallet1()

func sumWallet2(banknotsArray wallet: [Int]? = nil) -> Int? {
    var sum = 0
    if wallet == nil {
        return nil
    }
    for oneBanknot in wallet! {
        sum += oneBanknot
    }
    return sum
}
sumWallet2(banknotsArray: wallet)

func generateWallet(walletLength: Int) -> [Int] {
    let typesOfBanktotes = [50, 100, 500, 1000, 5000]
    var wallet: [Int] = []
    for _ in 1...walletLength {
        let randomIndex = Int(arc4random_uniform(UInt32(typesOfBanktotes.count - 1)))
        wallet.append(typesOfBanktotes[randomIndex])
    }
    return wallet
}
func sumOfWallet(banknotFunction wallet: (Int) -> ([Int])) -> Int? {
    let myWalletArray = wallet(Int(arc4random_uniform(10)))
    var sum: Int = 0
    for oneBanknote in myWalletArray {
        sum += oneBanknote
    }
    return sum
}
sumOfWallet(banknotFunction: generateWallet)

func oneStep(coordinates: inout (Int, Int), stepType: String) {
    func up(coords: inout (Int, Int)) {
        coords = (coords.0 + 1, coords.1)
    }
    func right(coords: inout (Int, Int)) {
        coords = (coords.0 + 1, coords.1)
    }
    func left(coords: inout (Int, Int)) {
        coords = (coords.0 + 1, coords.1)
    }
    func down(coords: inout (Int, Int)) {
        coords = (coords.0 + 1, coords.1)
    }
    switch stepType {
    case "up":
        up(coords: &coordinates)
    case "right":
        right(coords: &coordinates)
    case "left":
        left(coords: &coordinates)
    case "down":
        down(coords: &coordinates)
    default:
        break;
    }
}
var coordinates = (10, -5)
oneStep(coordinates: &coordinates, stepType: "up")
oneStep(coordinates: &coordinates, stepType: "left")
coordinates

func say(what: String) {}
func say(what: Int) {}

func cry() -> String {
    return "Yes"
}
func cry() -> Bool {
    return true
}


