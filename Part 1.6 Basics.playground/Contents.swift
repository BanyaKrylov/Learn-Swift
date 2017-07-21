// Кортежи

import UIKit

// Объявление кортежа и инициализация в одном виражении
var kortege: (film: String, number: Int, eat: String) = ("Great Gatsby", 8, "Borsch")

// Запись значений кортежа в отдельные константы
let (film, number, eat) = kortege

// Присваивание однго кортежа другому
var kortege2 = kortege

// Изменение значений кортежа
kortege2 = ("Moon", 5, "Eats")

// Замена значений кортежей между собой
var kortege3 = kortege2

kortege2 = kortege
kortege = kortege3

// Вывод данных из разных кортежей
var kortege4 = (kortege.number, kortege2.number, kortege.number - kortege2.number)
