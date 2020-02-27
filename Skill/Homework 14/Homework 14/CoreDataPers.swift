//
//  CoreDataPers.swift
//  Homework 14
//
//  Created by Ivan Krylov on 27.02.2020.
//  Copyright © 2020 Ivan Krylov. All rights reserved.
//

import Foundation
import CoreData
import UIKit

var tasks = [NSManagedObject]()
let appDelegate = UIApplication.shared.delegate as! AppDelegate
let managedContext = appDelegate.persistentContainer.viewContext
let entity =  NSEntityDescription.entity(forEntityName: "Items2", in: managedContext)

func addNewTaskCore(nameTask: String, isCompleted: Bool = false) {
    let task = NSManagedObject(entity: entity!, insertInto:managedContext)
    task.setValue(nameTask, forKey: "names")
    task.setValue(isCompleted, forKey: "isCompleted")
    tasks.append(task)
    
    do {
        try managedContext.save()
    } catch {
        print(error)
    }
}

func removeTaskCore(at index: Int) {
    let objectToDelete = tasks[index]
    tasks.remove(at: index)
    managedContext.delete(objectToDelete)
    
    do {
        try managedContext.save()
    } catch {
        let saveError = error as NSError
        print(saveError)
    }
}

func changeStatusCore(at taskInd: Int) -> Bool{
    let taskChange = tasks[taskInd]
    let valueBool = taskChange.primitiveValue(forKey: "isCompleted") as! Bool
    if valueBool {
        taskChange.setValue(false, forKey: "isCompleted")
    } else {
        taskChange.setValue(true, forKey: "isCompleted")
    }
    
    do {
        try managedContext.save()
    } catch {
        let saveError = error as NSError
        print(saveError)
    }
    
    return tasks[taskInd].primitiveValue(forKey: "isCompleted") as! Bool
}
