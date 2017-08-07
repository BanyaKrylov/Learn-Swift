//задание 1
//написать 2 функции, которые будут переводить градусы в радианы и наоборот

func degrees(from radians: Double) -> Double {
    return radians * Double.pi / 180
}

print (degrees(from: 47))

func radians(from degrees: Double) -> Double {
    return degrees * 180 / Double.pi
}

print(radians(from: 3.2))

//Проверка - если вывелось true, то задание, скорее всего сделано правильно

radians(from: degrees(from: 3.14)) == 3.14


//задание 2
//написать функцию, которая говорит, как называется правильный многоугольник с определенным количеством углов
//Пример: 3 - треугольник, 4 - квадрат, .. и так далее
//Если на вход пришло недопустимое количество углов - вернуть nil
//Если слишком большое количество углов - вернуть nil

func nameOfFigure(with numberOfAngles: Int) -> String? {
    switch numberOfAngles {
    case 3:
        return "Треугольник"
    case 4:
        return "Квадрат"
    case 5:
        return "Пятиугольник"
    case 6:
        return "Шестиугольник"
    case 7:
        return "Семиугольник"
    case 8:
        return "Восьмиугольник"
    default:
        return nil
    }
}

//Проверка - если вывелось true, то задание, скорее всего сделано правильно

nameOfFigure(with: 3) == "Треугольник"
nameOfFigure(with: 5) == "Пятиугольник"
nameOfFigure(with: 2) == nil
nameOfFigure(with: 100) == nil

//задание 2*
//Если углов больше 4, то выводить "n-угольник"
//Пример: 5 - 5-угольник, 132 - 132-угольник

func nameOfFigures(with numberOfAngles: Int) -> String? {
    switch numberOfAngles {
    case 3:
        return "Треугольник"
    case 4:
        return "Квадрат"
    case 5...1000:
        return "\(numberOfAngles)-угольник"
    default:
        return nil
    }
}

print(nameOfFigures(with: 132))
