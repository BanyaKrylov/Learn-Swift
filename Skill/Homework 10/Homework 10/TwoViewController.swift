//
//  TwoViewController.swift
//  Homework 10
//
//  Created by Ivan Krylov on 10.02.2020.
//  Copyright © 2020 Ivan Krylov. All rights reserved.
//

import UIKit

struct Settings {
    var section = ""
    var nameCell: Array<String> = []
}

class SettingsFabric {
    static func settings() -> [Settings] {
        return [Settings(section: "One", nameCell: [ "Сотовая связь", "Режим модема"]),
                Settings(section: "Two", nameCell: ["Уведомления", "Звуки, тактильные сигналы", "Не беспокоить", "Экранное время"]),
                Settings(section: "Three", nameCell: ["Основные", "Пункт управления", "Экран и яркость"])
               ]
    }
}

class TwoViewController: UIViewController {
    var settings = SettingsFabric.settings()

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension TwoViewController: UITableViewDataSource, UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return settings.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if settings[section].section == "One" {
            return 3 + settings[section].nameCell.count
        } else {
            return settings[section].nameCell.count
        }
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return " "
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableCell") as! CellTableViewCell

        if settings[indexPath.section].section == "One" {
            switch indexPath.row {
            case 0:
                cell.nameLabel.text = "Авиарежим"
                cell.nameTwoLabel.text = ""
                cell.accessoryType =  UITableViewCell.AccessoryType.none
                cell.switcher.isHidden = false
            case 1:
                cell.nameLabel.text = "Wi-Fi"
                cell.nameTwoLabel.text = "Anvicd-YOTA"
                cell.switcher.isHidden = true
            case 2:
                cell.nameLabel.text = "Bluetooth"
                cell.nameTwoLabel.text = "Вкл."
                cell.switcher.isHidden = true
            default:
                cell.nameLabel.text = settings[indexPath.section].nameCell[indexPath.row - 3]
                cell.nameTwoLabel.text = ""
                cell.switcher.isHidden = true
                }
        } else {
            cell.nameLabel.text = settings[indexPath.section].nameCell[indexPath.row]
            cell.nameTwoLabel.text = ""
            cell.switcher.isHidden = true
        }
        
        return cell
    }
}
