import UIKit

enum CurrencyUnit {
    case rouble, dollar, euro
}
let roubleCurrency = CurrencyUnit.rouble
let dollarCurrency: CurrencyUnit
dollarCurrency = .dollar

enum DollarCounrties {
    case usa
    case canada
    case australia
}

enum CurrencyUnitToCountry {
    case rouble(countries: [String], shortName: String)
    case dollar(countries: [String], shortName: String, national: DollarCounrties)
    case euro(countries: [String], shortName: String)
}
var roubleCurrencys: CurrencyUnitToCountry
roubleCurrencys = .rouble(countries: ["Russia"], shortName: "RUB")

var dollarCurrencys: CurrencyUnitToCountry
dollarCurrencys = .dollar(countries: ["USA"], shortName: "USD", national: .usa)

enum Smile: String {
    case joy = ":)"
    case laugh = ":D"
}
var iAmHappy = Smile.joy
iAmHappy.rawValue

struct Figure {
    var coordinate: (Int, Int)
    var size: String
}
var circle = Figure(coordinate: (5, 4), size: "Medium")
var rectangle = Figure(coordinate: (10, -2), size: "Large")

