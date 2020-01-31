import UIKit

//1. Прочитайте главы Enumerations и Classes and Structures в книге «The Swift Programming Language».
//Done

//2. Если бы в вашей программе была работа с игральными картами, как бы вы организовали их хранение? Приведите пример.
enum CardValue {
    case king, queen, jack, ace, one, two, three, four, five, six, seven, eight, nine, ten
}
enum Card {
    case hearts(value: CardValue)
    case diamonds(value: CardValue)
    case spades(value: CardValue)
    case clubs(value: CardValue)
}
var card:Card
card = .clubs(value: .two)

//3. Каких типов могут быть raw значения кейсов enum’а?
//String, Character, Int, Float, Double

//4. Напишите класс и структуру для хранения информации (положение, размер) о круге, прямоугольнике.
struct Figure {
    var coordinateCircle: (Int, Int, String) = (2, 0, "Large")
    var coordinateRectangle: (Int, Int, String) = (-1, 6, "Medium")
}
var fig = Figure()
fig.coordinateCircle

class FigureClass {
    var coordinateCircle: (Int, Int, String) = (2, 0, "Large")
    var coordinateRectangle: (Int, Int, String) = (-1, 6, "Medium")
    
}
var figClass = FigureClass()
figClass.coordinateCircle

//5. Для следующего кода, выполнение каких строчек закончится ошибкой и почему:
//
//class ClassUser1{
//    let name: String
//    init(name: String) {
//        self.name = name
//    }
//}
//
//
//class ClassUser2{
//    var name: String
//    init(name: String) {
//        self.name = name
//    }
//}
//
//
//struct StructUser1{
//    let name: String
//    init(name: String) {
//        self.name = name
//    }
//}
//
//
//struct StructUser2{
//    var name: String
//    init(name: String) {
//        self.name = name
//    }
//}
//
//
//let user1 = ClassUser1(name: "Nikita")
//user1.name = "Anton" //name объявлена в классе как константа
//
//
//let user2 = ClassUser2(name: "Nikita")
//user2.name = "Anton"
//
//
//let user3 = StructUser1(name: "Nikita")
//user3.name = "Anton" //name3 объявлена как константа
//
//
//let user4 = StructUser2(name: "Nikita")
//user4.name = "Anton" //name4 объявлена как константа
//
//
//var user5 = ClassUser1(name: "Nikita")
//user5.name = "Anton" //name объявлена в классе как константа
//
//
//var user6 = ClassUser2(name: "Nikita")
//user6.name = "Anton"
//
//
//var user7 = StructUser1(name: "Nikita")
//user7.name = "Anton" //name объявлена в структуре как константа
//
//
//var user8 = StructUser2(name: "Nikita")
//user8.name = "Anton"

//6. Напишите пример класса автомобиля (какие поля ему нужны – на ваше усмотрение) с конструктором, в котором часть полей будет иметь значение по умолчанию.
class Automobile {
    let type: String = "light"
    let power: Int = 100
    var doors: Int
    var transmission: String
    init(doors: Int, transmission: String) {
        self.doors = doors
        self.transmission = transmission
    }
}
var auto = Automobile(doors: 4, transmission: "Auto")
auto.power

//7. Напишите класс для калькулятора с функциями для сложения, вычитания, умножения и деления цифр, которые в нем хранятся как свойства.
enum Operators {
    case plus, minus, division, multiplication
}
class Calculator {
    let typeOperator: Operators
    init(typeOperator: Operators) {
        self.typeOperator = typeOperator
    }
    func calculate(num1: Double, num2: Double) -> Double {
        switch typeOperator {
        case .plus:
            return num1 + num2
        case .minus:
            return num1 - num2
        case .division:
            return num1 / num2
        case .multiplication:
            return num1 * num2
        }
    }
}
var sum = Calculator(typeOperator: .plus)
sum.calculate(num1: 1, num2: 3)

//8. В каких случаях следует использовать ключевое слово static?
//В случаях, когда нам необходимо, чтобы свойство или функция принадлежала не экземпляру класса, а самому классу и не могла быть вызвана напрямую.

//9. Могут ли иметь наследников:
//1. Классы
//Да, т.к. это тип ссылка, а ссылки можно наследовать, в отличие от типа значение, которое не наследуется, а копируется

//2. Структуры
//Нет, т.к. это тип значение, а не ссылка

//3. Enum’ы
//Нет, как и структуры.

//10. Представим, что вы создаете rpg игру. Напишите структуру для хранения координаты игрока, enum для направлений (восток, сервер, запад, юг) и функцию, которая берет к себе на вход позицию и направление и возвращает новую координату (после того как игрок походил на одну клетку в соответствующую сторону). Вызовите эту функцию несколько раз, «походив» своим игроком
struct Coordinates {
    var coordinate = (0, 0)
}
enum Routes {
    case east, north, west, south
}
func calculationCoordinates(position: Coordinates, route: Routes) -> Coordinates {
    switch route {
    case .east:
        return .init(coordinate: (position.coordinate.0 + 1, position.coordinate.1))
    case .north:
        return .init(coordinate: (position.coordinate.0, position.coordinate.1 + 1))
    case .south:
        return .init(coordinate: (position.coordinate.0 + 1, position.coordinate.1 - 1))
    case .west:
        return .init(coordinate: (position.coordinate.0 - 1, position.coordinate.1))
//    default:
//        return .init(coordinate: (position.coordinate.0, position.coordinate.1))
    }
}
var eastStep = calculationCoordinates(position: Coordinates.init(coordinate: (4, 6)), route: .east)
eastStep.coordinate
var northStep = calculationCoordinates(position: Coordinates.init(coordinate: (2, 7)), route: .north)
northStep.coordinate

//Бонусные задания к урокам:
//
//Енамы
//Можно ли в enum’е хранить дополнительные данные?
/*Не понял вопрос. Что подразумавается под дополнительными данными?
 Перечисления могут в себе группировать, помимо самих членов перечсисления, другие перечисления, методы, свойства. В этом суть вопроса?
 */

//Классы
//В каких случаях удобнее структурировать данные и функции в класс?
//Не знаю. Прошу объяснить. Сейчас эта тема мне не совсем понятна.

//Структуры
//В каких случаях лучше использовать класс, а в каких – структуру?
/*Структура - типы-значения. Классы - типы-ссылка. Т.е. при работе в экземпляром структуры проиходит его копирование, а при работе с экземпляром класса просто ссылается на него.
 Но я не понимаю в каких случах что использовать. Можете объяснить? Сейчас не сильно наблюдаю разницу между страктурами и классами.
 */
