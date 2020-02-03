import UIKit

//Homework 11

var dishes: Set<String> = ["bread", "vegetables"]
var dishesTwo: Set = ["bread", "vegetables"]
var members = Set<String>(arrayLiteral: "ObiVan", "Anaken", "Sky")
var membersTwo = Set(arrayLiteral: "ObiVan", "Anaken")

var emptiSet = Set<String>()
dishes = []

dishes.insert("milk")
dishes.insert("milk")

dishes.remove("milk")

dishesTwo.contains("bread")

let evenDigits: Set = [1, 3, 5, 7, 9]
let oddDigits: Set = [2, 4, 6, 8, 0]
var differentDigits: Set = [1, 4, 5, 8, 9]
var inter = differentDigits.intersection(evenDigits).sorted()
var symmetr = differentDigits.symmetricDifference(oddDigits).sorted()
var union = differentDigits.union(evenDigits).sorted()
var sudtract = differentDigits.subtracting(oddDigits).sorted()

if members == membersTwo {
    print("Sets nondiff")
} else {
    print("Sets diff")
}

membersTwo.isSubset(of: members)
members.isSubset(of: dishesTwo)
members.isSuperset(of: membersTwo)
members.isDisjoint(with: membersTwo)
