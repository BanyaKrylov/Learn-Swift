import UIKit

//Homework 10

let oneTroThree = 1...3
for number in oneTroThree {
    print(number)
}

let alphabetArray = ["a", "b", "c"]
var mutableArray = [2, 4 ,6]
let unmutableArray = ["one", "two", "three"]
var newArray = unmutableArray
newArray[1] = "four"
newArray

let repeaArray = Array(repeating: "Swift", count: 5)

alphabetArray[2]
mutableArray[0] = 16
mutableArray[0]
mutableArray

var subArray = mutableArray[1...2]
mutableArray[1...2] = [5]
mutableArray

var firstArray: [String]
var secondArray: Array<Int>
firstArray = ["one", "two", "tree", "four"]
secondArray = [1, 2, 3, 4]
firstArray
secondArray

alphabetArray == unmutableArray
var equalsArray = ["a", "b", "c"]
alphabetArray == equalsArray

let charsArray = alphabetArray + equalsArray
let litArray = alphabetArray + unmutableArray

var arrayOfArrays = [[1,2,3], [4,5,6], [7,8,9]]
arrayOfArrays[2]
arrayOfArrays[1][2]

arrayOfArrays.count
arrayOfArrays.isEmpty

equalsArray.suffix(1)
equalsArray.last
equalsArray.first

arrayOfArrays.append([10,11,12])
equalsArray.insert("d", at: 2)

mutableArray.remove(at: 1)
firstArray.removeLast()
secondArray.removeFirst()

alphabetArray.dropLast()
alphabetArray.dropFirst(1)
alphabetArray.contains("b")
secondArray.lastIndex(of: 4)
secondArray.max()
secondArray.min()

var a: Float = 3.5
a.hashValue

arrayOfArrays.reverse()
