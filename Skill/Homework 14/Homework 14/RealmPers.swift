//
//  RealmPers.swift
//  Homework 14
//
//  Created by Ivan Krylov on 25.02.2020.
//  Copyright © 2020 Ivan Krylov. All rights reserved.
//

import Foundation
import RealmSwift

//var toDoList: [[String: Any]] {
//    set {
//        UserDefaults.standard.set(newValue, forKey: "ToDoListKey")
//        UserDefaults.standard.synchronize()
//    }
//    get {
//        if let array = UserDefaults.standard.array(forKey: "ToDoListKey") as? [[String: Any]] {
//            return array
//        } else {
//            return []
//        }
//    }
//}
//
//func addNewTask(nameTask: String, isCompleted: Bool = false) {
//    toDoList.append(["Name": nameTask, "isCompleted": false])
//}
//
//func removeTask(at index: Int) {
//    toDoList.remove(at: index)
//}
//
//func changeStatus(at task: Int) -> Bool{
//    toDoList[task]["isCompleted"] = !(toDoList[task]["isCompleted"] as! Bool)
//
//    return toDoList[task]["isCompleted"] as! Bool
//}

class Items1: Object {
    @objc dynamic var names = ""
    @objc dynamic var isCompleted = false
}
let realm = try! Realm()

func addNewTask(nameTask: String, isCompleted: Bool = false) {
    let task = Items1()
    task.names = nameTask
    task.isCompleted = false
    try! realm.write {
        realm.add(task)
    }
}

func removeTask(at index: Int) {
    let taskForDelete = realm.objects(Items1.self)
    try! realm.write {
        realm.delete(taskForDelete[index])
    }
}

func changeStatus(at task: Int) -> Bool{
    let taskForChange = realm.objects(Items1.self)
    try! realm.write {
        taskForChange[task]["isCompleted"] = !(taskForChange[task]["isCompleted"] as! Bool)
    }
    return taskForChange[task]["isCompleted"] as! Bool
}

func loadData() {
    _ = realm.objects(Items1.self)
}

var toDoList = realm.objects(Items1.self)
