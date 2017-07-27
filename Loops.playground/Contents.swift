// Циклы

import UIKit

var sum = 0;

// Цикл
for i in 1...10 {
    sum += i
}
sum

for i in (1...10).reversed() {
    sum += i
}
sum

// Цикл от 1 до 9 с шагом 2
for i in stride(from: 1, to: 9, by: 2) {
    print(i)
}

// Цикл от 1 до 9 включительно с шагом 2
for i in stride(from: 1, through: 9, by: 2) {
    print(i)
}

var musicStyle = ["Rock", "Jazz", "Blues"]

for musicName in musicStyle {
    print("I love: \(musicName)")
}

var countrysAndBloks = ["Russia": "EAES", "France": "US", "USA": "NATO"]

for (country, bloks) in countrysAndBloks {
    print("\(country) like as \(bloks)")
}

var countrys = ["Russia", "France", "USA"]

for (index, country) in countrys.enumerated() {
    print("\(index + 1). \(country)")
}

var str = "String"

// Посимвольная обработка строки
for ch in str.characters {
    print(ch)
}

// Вложенные циклы
var resultsOfGames = ["Red Wings": ["2:1", "2:3"], "Capitals": ["3:6", "5:5"], "Penguins": ["3:3", "1:2"]]

for (teamName, results) in resultsOfGames {
    for oneResult in results {
        print("Игра с \(teamName) - \(oneResult)")
    }
}