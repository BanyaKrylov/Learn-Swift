//
//  ViewController.swift
//  ListApp
//
//  Created by Иван Крылов on 26.08.17.
//  Copyright © 2017 Иван Крылов. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let lesson: [Lesson] = [
        Lesson(numberOfDays: 1, themeLesson: "Basics", scaleLesson: 4, switcher: true),
        Lesson(numberOfDays: 2, themeLesson: "Basics1", scaleLesson: 5, switcher: true),
        Lesson(numberOfDays: 3, themeLesson: "Basics2", scaleLesson: 4, switcher: true),
        Lesson(numberOfDays: 4, themeLesson: "Basics3", scaleLesson: 5, switcher: true),
        Lesson(numberOfDays: 5, themeLesson: "Basics4", scaleLesson: 5, switcher: false),
        Lesson(numberOfDays: 6, themeLesson: "Basics5", scaleLesson: 4, switcher: false),
    ]
    
    @IBOutlet weak var tabel: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
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
        return lesson.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let taskCells = tableView.dequeueReusableCell(withIdentifier: "messageCell") as? TaskCellTableViewCell {
            let userToShow = lesson[indexPath.row]
            taskCells.mainImage.image = userToShow.photo
            taskCells.nameLabel.text = userToShow.name
            taskCells.messageLabel.text = userToShow.message
            
            return taskCells
        }
        return UITableViewCell()
    }
}

