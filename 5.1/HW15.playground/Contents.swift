import UIKit

func handle100(wallet: [Int]) -> [Int] {
    var returnWallet = [Int]()
    for banknot in wallet {
        if banknot == 100 {
            returnWallet.append(banknot)
        }
    }
    return returnWallet
}
var wallet = [10,50,100,100,5000,100,50,50,500,100]
handle100(wallet: wallet)

func handleMore1000(wallet: [Int]) -> [Int] {
    var returnWallet = [Int]()
    for banknot in wallet {
        if banknot >= 1000 {
            returnWallet.append(banknot)
        }
    }
    return returnWallet
}
handleMore1000(wallet: wallet)

func handle(wallet: [Int], closure: (Int) -> Bool) -> [Int] {
    var returnWallet = [Int]()
    for banknot in wallet {
        if closure(banknot) {
            returnWallet.append(banknot)
        }
    }
    return returnWallet
}
func compare100(banknot: Int) -> Bool {
    return banknot == 100
}
func compare1000(banknot: Int) -> Bool {
    return banknot >= 1000
}
handle(wallet: wallet, closure: compare100(banknot:))
handle(wallet: wallet, closure: compare1000(banknot:))

print(handle(wallet: wallet, closure: {(banknot: Int) -> Bool in return banknot == 100}))
print(handle(wallet: wallet, closure: {(banknot: Int) -> Bool in return banknot >= 1000}))
print(handle(wallet: wallet, closure: {(banknot: Int) -> Bool in return banknot < 100}))

print(handle(wallet: wallet, closure: {banknot in return banknot >= 100}))
print(handle(wallet: wallet, closure: {banknot in return banknot <= 100}))

print(handle(wallet: wallet, closure: {banknot in banknot <= 50}))

print(handle(wallet: wallet, closure: {$0 == 50}))

print(handle(wallet: wallet) {$0 == 10})

let successBanknots = [100, 500]
handle(wallet: wallet) {
    banknot in
    for number in successBanknots {
        if number == banknot {
            return true
        }
    }
    return false
}

let closure: () -> () = {
    print("Closure")
}
closure()

var sum: (_ numOne: Int, _ numTwo: Int) -> Int = {
    return $0 + $1
}
print(sum(10, 49))

