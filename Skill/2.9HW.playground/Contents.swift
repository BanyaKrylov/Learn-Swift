import UIKit


//1. Прочитайте главы Collection Types и Control Flow в книге «The Swift Programming Language»
let status = "Done"

//2. Напишите все возможные варианты кода, в которых по-разному создается Int массив
let arrayZero = [Int] ()
let arrayOne = [1, 2, 3]
let arrayTwo: [Int] = [1, 2, 3]
let arrayThree: Array<Int> = [1, 2 ,3]
let arrayFour = Array(repeating: 1, count: 10)
let arrayFive = Array(0...9)
let arraySix = Array(arrayLiteral: 1...10)

//3. Напишите код, который:
//1. создаст массив из трех Int элементов
var arrayInt: [Int] = [1, 2, 3, 4, 5]

//2. добавит в этот массив еще один элемент
arrayInt.append(6)

//3. удалит первый элемент
arrayInt.remove(at: 0)
arrayInt

//4. с помощью цикла найдет минимальное и максимальное число
var maxNumber = arrayInt[0]
var minNumber = arrayInt[0]
var i = 0
while i < arrayInt.count {
    if arrayInt[i] > maxNumber {
        maxNumber = arrayInt[i]
    }
    if arrayInt[i] < minNumber {
        minNumber = arrayInt[i]
    }
    i += 1
}
print(maxNumber)
print(minNumber)

//5. выведет в консоль (функция print) разницу между найденным максимальным и минимальным числом
print(maxNumber - minNumber)

//4. Напишите все возможные варианты кода, в которых по-разному добавляются новые элементы в массив
var arraySeven = [1, 2, 3]
arraySeven.append(4)
arraySeven.insert(5, at: 4)

//5. Что получится в результате выполнения следующей программы:
// Создается массив с типом данных Int
var array = [7, 5, 2]
// Заменяется индекс 1 со значением 5 на значение 9
array[1] = 9
// Индексу 2 со значением 2 присваивается (т.е. значение в массиме будет заменено) сумма индексов 1 и 2 значения которых, соответственно 9 и 2
array[2] = array[1] + array[2]
// Выводится значение индекса 2 в консоль (11)
print(array[2])

//6. Напишите код, который:
//1. Создаст массив с именами людей (строки)
let namesPerson = ["Ivan", "Ilya", "Olga", "Tanya"]

//2. Создаст переменную greeting (пустую строку)
var greeting = ""

//3. В цикле для каждого четного (по порядку) имени добавит в строку greeting "Go left, \(name)"; для каждого нечетного – "Go right, \(name)"
var j = 0
while j < namesPerson.count {
    if j % 2 == 0 {
        greeting.append(contentsOf: "Go left, \(namesPerson[j]).\n")
    } else {
        greeting.append(contentsOf: "Go right, \(namesPerson[j]).\n")
    }
    j += 1
}
print(greeting)

//7. Опишите словами, в чем различие между массивом и сетом
/* Массив - упорядоченные данные (не обязательно уникальные) с индексами. Набор - неупорядоченные (обязательно уникальные) данные без индекса.*/

//8. Для следующего кода, что будет результатом выполнения подпунктов:
//let myEmoji: Set = ["😂", "🎊", "🕺", "🚀"]
//let wifeEmoji: Set = ["🎸", "😂", "🎊", "🦋"]
//1. myEmoji.intersection(wifeEmoji)
//Набор с общими значениями из myEmoji и wifeEmoji ("😂", "🎊")

//2. myEmoji.symmetricDifference(wifeEmoji)
//Набор со всеми непересекающимися значениями из myEmoji и wifeEmoji ("🕺", "🚀", "🎸", "🦋")

//3. myEmoji.union(wifeEmoji)
//Набор со всеми значениями из myEmoji и wifeEmoji ("😂", "🎊", "🕺", "🚀", "🎸", "🦋")

//4. myEmoji.subtracting(wifeEmoji)
//Набор со всеми значениями из myEmoji, которых нет в wifeEmoji ("🕺", "🚀")

//9. Напишите по примеру для реального приложения, в которых вы бы использовали Set, Array и Dictionary
/* Set для Фото только по тому, что данные конкретной фотографии или видео содержат в себе помимо самого изображения как геолокацию, так и, например, отметку Избранное, что само по себе - разные типы и не обязательно их упорядочивать в рамках одного набора
 Array для Заметки, т.к. данные там одного типа
 Dictionary для приложения Календарь, т.к. по ключу Дата можно получить доступ информации за день (события, геолокация, контакты и т.п.) или как вариант - Контакты, по ключу Фамилия можно получить разные типы данных (ФИО, номер, фото, индивидуальный рингтон)*/

//10. Для следующего кода допишите цикл, который выведет в консоль результат возведения числа number в степень power:
let number = 5
let power = 3
var result = 1
var x = 0
while x < power {
    result = number * result
    x += 1
}
print(result)

//11. Представьте, что у нас есть константа, в которой мы храним настроение пользователя (число от 0 до 10):
let mood = 7
//1. Напишите код, который в зависимости от значения этой константы (промежутки [0, 3], [4, 7], [8,10]) выводит в консоль разные сообщения пользователю с помощью if
if mood == 0 || mood == 1 || mood == 2 || mood == 3 {
    print("Bad mood(")
} else if mood == 4 || mood == 5 || mood == 6 || mood == 7 {
    print("Normal mood|")
} else if mood == 8 || mood == 9 || mood == 10 {
    print("Good mood)")
} else {
    print("Mood is unavailable")
}

//2. аналогично, но вместо if используйте switch
switch mood {
case 0...3:
    print("Bad mood(")
case 4...7:
    print("Normal mood|")
case 8...10:
    print("Good mood)")
default:
    print("Mood is unavailable")
}

