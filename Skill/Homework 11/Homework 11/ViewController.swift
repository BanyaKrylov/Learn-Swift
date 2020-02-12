//
//  ViewController.swift
//  Homework 11
//
//  Created by Ivan Krylov on 11.02.2020.
//  Copyright © 2020 Ivan Krylov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bottomView: UIView!
    
    let segmentedView = SegmentedView.loadFromNIB()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let w = bottomView.frame.size.width
        let h = bottomView.frame.size.height
        
        
        segmentedView.delegate = self
        segmentedView.frame = CGRect(x: 0, y: 0, width: w, height: h)
//        segmentedView.animationItem.backgroundColor = .red
        segmentedView.animationItem.frame = self.segmentedView.firstSegmentOut.frame
        bottomView.addSubview(segmentedView)
    }

}

extension ViewController: SegmentedViewDelegate {

func firstSegmentedViewPressed(_ segmentView: UIButton) {
    
        UIView.animate(withDuration: 0.7, delay: 0.0, options: .curveEaseOut, animations: {
            if self.segmentedView.firstSegmentOut.isTouchInside {
                self.segmentedView.animationItem.frame = self.segmentedView.firstSegmentOut.frame
            }
            if self.segmentedView.secondSegmentOut.isTouchInside {
                self.segmentedView.animationItem.frame = self.segmentedView.secondSegmentOut.frame
            }
        }, completion: { finished in
          print("Move to right")
        })
    }
}
