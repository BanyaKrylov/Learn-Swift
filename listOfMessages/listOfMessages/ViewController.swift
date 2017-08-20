//
//  ViewController.swift
//  listOfMessages
//
//  Created by Иван Крылов on 20.08.17.
//  Copyright © 2017 Иван Крылов. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let users: [User] = [
        User(photo: #imageLiteral(resourceName: "images"), name: "Stive Jobes", message: "Hello"),
        User(photo: #imageLiteral(resourceName: "images-2"), name: "Bill Gates", message: "How are you?")
    ]
    
    @IBOutlet weak var tabelView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tabelView.dataSource = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

extension ViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let messageCell = tableView.dequeueReusableCell(withIdentifier: "messageCell") as? MessageCell {
            let userToShow = users[indexPath.row]
            messageCell.mainImage.image = userToShow.photo
            messageCell.nameLabel.text = userToShow.name
            messageCell.messageLabel.text = userToShow.message
            
            return messageCell
        }
        return UITableViewCell()
    }
}
