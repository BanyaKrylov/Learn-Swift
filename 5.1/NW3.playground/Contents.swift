import UIKit

//Homework 3

var sum: Double = 1 + 2

var pr: Double = 2 - 1

var tot: Double = sum * pr

var oto = pr / sum

var res = 20

var res2 = 12.43

var res3 = res2 / Double(res)  //Double.init(res)

res2 += res3

res2 += 5


let cons1: Int, cons2: Float, cons3: Double

cons1 = 18; cons2 = 16.4; cons3 = 5.7

var summa: Float = Float(cons1) + cons2 + Float(cons3)

var proizvedenie: Int = cons1 * Int((Double(cons2) * cons3))

var ostatok: Double = Double(cons2).truncatingRemainder(dividingBy: cons3)

print("Сумма/произведение/остаток от деления констант равны \(summa), \(proizvedenie) и \(ostatok), соответственно")


//Homework 4

var a = 2, b = 3

var uravnenie = ((a + (4 * b)) * (a - (3 * b))) + Int(pow(Double(a), 2))
print("Уравнение равно \(uravnenie)")

//Homework 5

var c = 1.75, d = 3.25

var uravnenie2 = (2 * pow((c + 1), 2)) + (3 * (d + 1))
print("Уравнение 2 равно \(uravnenie2)")

//Homework 5

let length = 28

let ploshyad = pow(Double(length), 2)

let dlinaOkruzhnosty = Double.pi * Double(length)
print("Площадь квадрата со стороной длиной \(length) равна \(ploshyad). \n А длина окружности радиусом \(length) равна \(dlinaOkruzhnosty).")
