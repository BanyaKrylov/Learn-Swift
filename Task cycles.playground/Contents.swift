//: Задание 1
//: Представьте, что вы являетесь преподавателем курсов по шах- матам. Ваши занятия посещают три ученика.
//: 1. Создайте словарь, который будет содержать информацию о ваших студентах и об их успехах. Ключом словаря должна быть фамилия, а значением — другой словарь, содержащий дату занятия и полученную на этом занятии оценку.
//: Тип данных словаря должен быть [String:[String:UInt]].
//: В вашем электронном журнале должно находиться по две оценки для каждого из трех учеников. Фамилии, даты за- нятий и оценки придумайте сами.
//: 2. Посчитайте средний балл каждого студента и средний балл всей группы целиком и выведите всю полученную инфор- мацию на консоль.

import UIKit
import Foundation

var journal: [String: [String: UInt]]

journal = ["Pertov": ["2016-02-05": 4, "2016-02-06": 5],
           "Ivanov": ["2016-04-09": 5, "2016-04-10": 3],
           "Sergeev": ["2017-10-12": 3, "2017-10-13": 4]]

var markJournal: [String: Double] = [:]

var sumOfAllMarks = 0

var countOfAllMarks = 0

for mark in journal {
    var sumOfMarksOfStudent = 0
    
    for lesson in mark.1 {
        sumOfMarksOfStudent += Int(lesson.1)
    }
    
    var avgMarksOfOneStudent = Double(sumOfMarksOfStudent) / Double(mark.1.count)
    
    markJournal[mark.0] = Double(avgMarksOfOneStudent)
    
    print("\(mark.0) - \(avgMarksOfOneStudent)")
    
    sumOfAllMarks += sumOfMarksOfStudent
    countOfAllMarks += mark.1.count
}

var avgMarkOfGroup = Double(sumOfAllMarks) / Double(countOfAllMarks)

print("Avg mark of group - \(avgMarkOfGroup)")
