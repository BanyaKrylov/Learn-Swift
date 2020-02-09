//
//  OneViewController.swift
//  Homework 10
//
//  Created by Ivan Krylov on 09.02.2020.
//  Copyright © 2020 Ivan Krylov. All rights reserved.
//

import UIKit

class OneViewController: UIViewController {
    
    var dataCell: [(name:String, images:String, costStart:String, costEnd:String, sale:String)] = [("Костюм спортивный G13 F", "9t0a4553-450x600-k90", "10000 руб", "5000 руб", "50%"), ("Костюм спортивный G13 M", "9t0a4578-450x600-k90", "10000 руб", "5000 руб", "50%"), ("Футболка G13 M", "9t0a4701-450x600-k90", "5000 руб", "3500 руб", "30%"), ("Футболка G13 F", "9t0a4716-450x600-k90", "5000 руб", "3500 руб", "30%"), ("Толстовка G13 F", "9t0a6182-450x600-k90", "7000 руб", "5950 руб", "15%"), ("Платье G13", "9t0a8589-450x600-k90", "8000 руб", "6500 руб", "20%")]

//    let arrImages = ["9t0a4553-450x600-k90", "9t0a4578-450x600-k90", "9t0a4701-450x600-k90", "9t0a4716-450x600-k90", "9t0a6182-450x600-k90", "9t0a8589-450x600-k90"]
//    let arrNames = ["Костюм спортивный G13 F", "Костюм спортивный G13 M", "Футболка G13 M", "Футболка G13 F", "Толстовка G13 F", "Платье G13"]
//    let arrStartCost = ["7000 руб", "7000 руб", "", "", "", ""]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension OneViewController: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let weigth = UIScreen.main.bounds.size.width / 2
        let heigth = UIScreen.main.bounds.size.height / 2
        return CGSize(width: weigth, height: heigth)
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataCell.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let attributeString: NSMutableAttributedString =  NSMutableAttributedString(string: dataCell[indexPath.row].costStart)
        attributeString.addAttribute(NSAttributedString.Key.strikethroughStyle, value: 2, range: NSMakeRange(0, attributeString.length))
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ItemCell", for: indexPath) as! CellCollectionViewCell
        cell.nameLabel.text = dataCell[indexPath.row].name
        cell.startCostLabel.attributedText = attributeString
        cell.endCostLabel.text = dataCell[indexPath.row].costEnd
        cell.saleLabel.text = dataCell[indexPath.row].sale
        cell.image.image = UIImage(named: dataCell[indexPath.row].images)

        return cell
    }
}
