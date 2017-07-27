// Наборы

import UIKit

// Объявление и инициализация набора
var dishes: Set<String> = ["хлеб", "колбаса", "тушенка"]
let dish = Set(arrayLiteral: 1, 3, 6)
var dishes2 = dishes

// Очищение набора (создание пустого набора)
dishes2 = []

// Добавление элемента в набор
dishes2.insert("hello")

// Удаление элемента из набора
dishes.remove("хлеб")
dishes

// Удаление всех элементов из набора
dishes.removeAll()
dishes

// Проверка наличия элемента в наборе
dishes.contains("hello")
dishes2.contains("hello")


var num: Set = [1, 2, 3, 4, 5]
var num2: Set = [4, 5, 6, 7, 8]
var num3: Set = [2, 5, 8, 5]

// Получение общих элементов наборов + сортировка
num.intersection(num3).sorted()

// Получение непересикающихся элементов наборов + сортировка
num.symmetricDifference(num2).sorted()

// Получение всех элементов наборов + сортировка
num2.union(num3).sorted()

// Получение элементов, которые входят в первый набор, но не входят во второй
num2.subtract(num3)

// Сравнение наборов
num == num2

// Проверка является ли один набор субнабором другого
num2.isSubset(of: num3)

// Проверка, является ли один набор супернабором другого
num.isSuperset(of: num2)

// Проверка, существуют ли общие элементы в наборах, если таковых нет, возвращает true
num.isDisjoint(with: num3)