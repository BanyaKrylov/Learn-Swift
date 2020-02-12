//
//  ButtonView.swift
//  Homework 11
//
//  Created by Ivan Krylov on 11.02.2020.
//  Copyright © 2020 Ivan Krylov. All rights reserved.
//

import UIKit

@IBDesignable class ButtonView: UIView {

    var isSetuped = false
    
    @IBInspectable var buttonBorder: CGFloat = 3 {
        didSet {
            layoutIfNeeded()
        }
    }
    @IBInspectable var buttonCornerRadius: CGFloat = 50 {
        didSet {
            updateCornerRadius()
        }
    }
    
    @IBInspectable var buttonBorderColor: UIColor? {
        set {
            guard let uiColor = newValue else { return }
            button.layer.borderColor = uiColor.cgColor
        }
        get {
            guard let color = layer.borderColor else { return nil }
            return UIColor(cgColor: color)
        }
    }
    
    private let button = UIButton()
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        let w = frame.size.width
        let h = frame.size.height
        
        button.frame = CGRect(x: 0, y: 0, width: w, height: h)
        button.backgroundColor = .brown
        button.setTitle("Button", for: .normal)
        updateCornerRadius()
        button.layer.borderColor = .none
        button.layer.borderWidth = buttonBorder

        if isSetuped {
            return
        }
        isSetuped = true
        
        addSubview(button)
    }

    func updateCornerRadius() {
        button.layer.cornerRadius = buttonCornerRadius
    }
}
