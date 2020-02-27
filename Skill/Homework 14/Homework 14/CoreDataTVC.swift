//
//  CoreDataTVC.swift
//  Homework 14
//
//  Created by Ivan Krylov on 27.02.2020.
//  Copyright © 2020 Ivan Krylov. All rights reserved.
//

import UIKit
import CoreData

class CoreDataTVC: UITableViewController {
    
    @IBAction func addTaskCore(_ sender: Any) {
        let alertController = UIAlertController(title: "Создать новую задачу", message: nil, preferredStyle: .alert)
        
        alertController.addTextField { (textField) in
            textField.placeholder = "Опишите задачу"
        }
        
        let alertActionCancel = UIAlertAction(title: "Отменить", style: .destructive) { (alert) in
            
        }
        let alertActionCreate = UIAlertAction(title: "Создать", style: .cancel) { (alert) in
            let newItem = alertController.textFields![0].text
            addNewTaskCore(nameTask: newItem!)
            self.tableView.reloadData()
        }
        alertController.addAction(alertActionCancel)
        alertController.addAction(alertActionCreate)
        
        present(alertController, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellCore", for: indexPath)
        let currentItem = tasks[indexPath.row]
        cell.textLabel?.text = currentItem.value(forKey: "names") as? String
        
        if (currentItem.value(forKey: "isCompleted") as? Bool)! {
            cell.accessoryType = .checkmark
        } else {
            cell.accessoryType = .none
        }
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        if changeStatusCore(at: indexPath.row) {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        } else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        }
    }
    
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            removeTaskCore(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let appDelegate =
            UIApplication.shared.delegate as! AppDelegate
        let managedContext = appDelegate.persistentContainer.viewContext
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName:"Items2")
        let fetchedResults = try! managedContext.fetch(fetchRequest)
        
        let results = fetchedResults
        tasks = results as! [NSManagedObject]
        
    }
}
