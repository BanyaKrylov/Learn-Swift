import UIKit
import Foundation

//Homework 13

//for-in
var totalSum = 0
for i in 1...10 {
    totalSum += i
}
totalSum

var totalNum = 0
var i = 0
for i in 1...10 {
    totalNum += i
}
totalNum
i

totalSum = 0
for i in (1...10).reversed() {
    totalSum += i
}
totalSum

for i in stride(from: 1, through: 5, by: 2) {
    print(i)
}
for i in stride(from: 1, to: 5, by: 2) {
    print(i)
}

var myMusicStyles = ["Rock", "Jazz", "Pop"]
for musicName in myMusicStyles {
    print("I like \(musicName)")
}

var countriesAndBlocks = ["Russia": "EAES", "USA": "NATO", "France": "ES"]
for (countryName, blockName) in countriesAndBlocks {
    print("\(countryName) entering in \(blockName)")
}

for (countryName, _) in countriesAndBlocks {
    print(countryName)
}

for (index, musicName) in myMusicStyles.enumerated() {
    print("\(index + 1). I love \(musicName)")
}

let myName = "Troll"
for oneChar in myName {
    print(oneChar)
}

var resultsOfGames = ["Red Wings": ["2:1", "2:3"], "Capitals": ["3:6", "5:5"], "Penguins": ["3:3", "1:2"]]
for (temName, results) in resultsOfGames {
    for oneResults in results {
        print("Game with \(temName) - \(oneResults)")
    }
}

//while
var x = 1
var resultSum = 0
while x <= 10 {
    resultSum += x
    x += 1
}
resultSum

//repeat while
x = 1
resultSum = 0
repeat {
    resultSum += x
    x += 1
} while x <= 10
resultSum

//continue
for i in 1...10 {
    if i % 2 == 0 {
        continue
    } else {
        print(i)
    }
}

//break
for i in 1...10 {
    var randNum = Int(arc4random_uniform(10))
    if randNum == 5 {
        print("Iteration number is \(i)")
        break
    }
}

mainLoop: for i in 1...5 {
    for y in i...5 {
        if y == 4 && i == 2 {
            break mainLoop
        }
        print("\(i) -- \(y)")
    }
}

//task
var journalOfStudent: [String:[String:UInt]] = ["Ivan":["21.05.19":4, "14.06.19":5], "Ilya":["13.03.19":5, "03.04.19":4], "Kostya":["02.12.19":3, "04.01.20":4]]
var countMark = 0
var countStudents = journalOfStudent.keys.count
var totalGrade = 0
for (studentsName, dateAndGradeLesson) in journalOfStudent {
    countMark = dateAndGradeLesson.values.count
    var sumGrade = 0
    for (date, grade) in dateAndGradeLesson {
        sumGrade += Int(grade)
        totalGrade += Int(grade)
        }
    print("Mid grade for \(studentsName) = \(Double(sumGrade) / Double(countMark))")
    }
countStudents
totalGrade
print("All student total grade = \(Double(totalGrade) / Double(countStudents))")

