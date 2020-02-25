//
//  ViewController.swift
//  Homework 13
//
//  Created by Ivan Krylov on 21.02.2020.
//  Copyright © 2020 Ivan Krylov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var redSquare: UIView!
    @IBOutlet weak var countAnimation: UILabel!
    @IBOutlet weak var topConstraint: NSLayoutConstraint!
    @IBOutlet weak var trailingConstraint: NSLayoutConstraint!
    @IBOutlet weak var leadingConstraint: NSLayoutConstraint!
    
    var funcCount = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redSquare.backgroundColor = UIColor.red
        topConstraint.constant = 150
        trailingConstraint.constant = 150
        leadingConstraint.constant = 150
        countAnimation.text = "Анимация: \(String(funcCount))"
        
        changeBackColor()
    }
    
    @IBAction func nextAnimation(_ sender: Any) {
        if funcCount == 7 {
            funcCount = 0
            funcCount += 1
            animateFunc()
        } else {
            funcCount += 1
            animateFunc()
        }
        countAnimation.text = "Анимация: \(String(funcCount))"
    }
    @IBAction func previousAnimation(_ sender: Any) {
        if funcCount == 1 {
            funcCount = 8
            funcCount -= 1
            animateFunc()
        } else {
            funcCount -= 1
            animateFunc()
        }
        countAnimation.text = "Анимация: \(String(funcCount))"
    }
    
    func animateFunc() {
        if funcCount != 7 {
            self.redSquare.layer.removeAllAnimations()
        }
        
        switch funcCount {
        case 1:
            changeBackColor()
        case 2:
            changePosition()
        case 3:
            cornerRadius()
        case 4:
            change180Degrees()
        case 5:
            changeAlpha()
        case 6:
            changeSize()
        case 7:
            changeEndlessDegrees()
        default:
            break
        }
    }
    
    func changeBackColor() {
        UIView.animate(withDuration: 2, delay: 0.5, options: .autoreverse, animations: {self.redSquare.backgroundColor = UIColor.yellow
        }) {
            (isCompleted) in
            self.redSquare.backgroundColor = UIColor.red
            print("changeBackColor")
        }
    }
    func changePosition() {
        UIView.animate(withDuration: 2, delay: 0.5, options: .autoreverse, animations: {self.topConstraint.constant = 0
            self.trailingConstraint.constant = 0
            self.leadingConstraint.constant += 150
            self.view.layoutIfNeeded()
        }) {
            (isCompleted) in
            self.topConstraint.constant = 150
            self.trailingConstraint.constant = 150
            self.leadingConstraint.constant = 150
            print("changePosition")
        }
    }
    func cornerRadius() {
        let animation = CABasicAnimation(keyPath: "cornerRadius")
        let radius: CGFloat = self.redSquare.bounds.size.height / 2.0
        animation.fromValue = NSNumber(value: 0)
        animation.toValue = NSNumber(value: Float(radius))
        animation.duration = 2.0
        animation.autoreverses = true
        redSquare.layer.add(animation, forKey: "cornerRadius")
        print("cornerRadius")
    }
    func change180Degrees() {
        UIView.animate(withDuration: 2, delay: 0.5, options: .autoreverse, animations: {self.redSquare.transform = CGAffineTransform(rotationAngle: CGFloat.pi)
        }) {
            (isCompleted) in
            print("change180Degrees")
        }
    }
    func changeAlpha() {
        UIView.animate(withDuration: 2, delay: 0.5, options: .autoreverse, animations: {self.redSquare.alpha = 0
        }) {
            (isCompleted) in
            self.redSquare.alpha = 1
            self.redSquare.transform = CGAffineTransform(rotationAngle: 0)
            print("changeAlpha")
        }
    }
    func changeSize() {
        UIView.animate(withDuration: 2, delay: 0.5, options: .autoreverse, animations: {self.topConstraint.constant = self.topConstraint.constant / 2
            self.trailingConstraint.constant = self.trailingConstraint.constant / 2
            self.leadingConstraint.constant = self.leadingConstraint.constant / 2
            self.view.layoutIfNeeded()
        }) {
            (isCompleted) in
            self.topConstraint.constant = 150
            self.trailingConstraint.constant = 150
            self.leadingConstraint.constant = 150
            print("changeSize")
        }
    }
    func changeEndlessDegrees() {
        UIView.animate(withDuration: 2, delay: 0.5, options: [.curveLinear, .repeat], animations: {self.redSquare.transform = CGAffineTransform(rotationAngle: CGFloat.pi)
        }) {
            (isCompleted) in
            self.redSquare.transform = CGAffineTransform(rotationAngle: 0)
            print("changeEndlessDegrees")
        }
    }
}

