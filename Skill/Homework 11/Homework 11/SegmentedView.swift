//
//  SegmentedView.swift
//  Homework 11
//
//  Created by Ivan Krylov on 11.02.2020.
//  Copyright © 2020 Ivan Krylov. All rights reserved.
//

import UIKit

protocol SegmentedViewDelegate: NSObjectProtocol {
    func firstSegmentedViewPressed(_ segmentView: UIButton)
}

@IBDesignable class SegmentedView: UIView {
    
    @IBOutlet weak var animationItem: UIView!
    
    weak var delegate: SegmentedViewDelegate?
   
    @IBOutlet weak var firstSegmentOut: UIButton!
    @IBAction func firstSegment(_ sender: Any) {
        delegate?.firstSegmentedViewPressed(firstSegmentOut)
       }
    @IBOutlet weak var secondSegmentOut: UIButton!
    @IBAction func secondSegment(_ sender: Any) {
        delegate?.firstSegmentedViewPressed(secondSegmentOut)
    }
    
    static func loadFromNIB() -> SegmentedView {
        let nib = UINib(nibName: "SegmentedView", bundle: nil)
        return nib.instantiate(withOwner: self, options: nil).first as! SegmentedView
    }
    
    var isSetuped = false

    var subView = UIView()
    
    @IBInspectable var colorBorder: UIColor? {
            set {
                guard let uiColor = newValue else { return }
                subView.layer.borderColor = uiColor.cgColor
            }
            get {
                guard let color = layer.borderColor else { return nil }
                return UIColor(cgColor: color)
            }
        }
    
    override func layoutSubviews() {
        super.layoutSubviews()

        let w = frame.size.width
        let h = frame.size.height
        
        subView.frame = CGRect(x: 0, y: 0, width: w, height: h)
        subView.layer.backgroundColor = .none
        subView.layer.borderWidth = 10

        if isSetuped {
            return
        }
        isSetuped = true

        for item in [subView, animationItem, firstSegmentOut, secondSegmentOut] {
            addSubview(item!)
        }
    }
}

