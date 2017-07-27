// Словари

import UIKit

// Объявление и инициализация словаря
var dictionary = ["one": "odin", "two": "dwa", "three": "tri"]

// Получение значения по ключу
dictionary["one"]

// Изменение значения по ключу
dictionary["two"] = "dwwaa"
dictionary

// Обновление значения по ключу
dictionary.updateValue("trii", forKey: "three")
dictionary

dictionary["four"] = "chetire"
dictionary

// Удаление элемента словаря (ключ + значение)
dictionary["one"] = nil
dictionary.removeValue(forKey: "two")
dictionary

// Явное указание типа ключа и значения словаря
var dict: [String:Int]
dict = ["one": 1]

// Очистка словаря
dict = [:]
dict

// Подсчет количества элементов словаря
dictionary.count

// Получение всех ключей словаря
dictionary.keys

// Получение всех значений словаря
dictionary.values