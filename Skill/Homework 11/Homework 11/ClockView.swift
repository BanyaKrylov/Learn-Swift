//
//  ClockView.swift
//  Homework 11
//
//  Created by Ivan Krylov on 11.02.2020.
//  Copyright © 2020 Ivan Krylov. All rights reserved.
//

import UIKit

@IBDesignable class ClockView: UIView {

    var isSetuped = false
    
    @IBInspectable var hourLineWigth: CGFloat = 4
    @IBInspectable var hourLineHeight: CGFloat = 15
    @IBInspectable var hourLineColor: UIColor = .black
    @IBInspectable var minuteLineWidth: CGFloat = 8
    @IBInspectable var minuteLineHeight: CGFloat = 20
    @IBInspectable var minuteLineColor: UIColor = .green {
        didSet {
            updateMinutesColors()
        }
    }
    @IBInspectable var secundeLineWidth: CGFloat = 12
    @IBInspectable var secundeLineHeight: CGFloat = 10
    @IBInspectable var secundeLineColor: UIColor = .blue {
        didSet {
            updateSecundesColors()
        }
    }
    
    var hours: CGFloat = 1 {
        didSet {
            updateHours()
        }
    }
    var minute: CGFloat = 1 {
        didSet {
            updateMinute()
        }
    }
    var secunde: CGFloat = 2
    
    private let hourLine = UIView()
    private let minuteLine = UIView()
    private let secundeLine = UIView()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        let w = frame.size.width
        let h = frame.size.height
        
        hourLine.layer.anchorPoint = CGPoint(x: 0.5, y: 1)
        minuteLine.layer.anchorPoint = CGPoint(x: 0.5, y: 1)
        secundeLine.layer.anchorPoint = CGPoint(x: 0.5, y: 1)
        
        hourLine.frame = CGRect(x: w / 2 - hourLineWigth / 2, y: hourLineHeight, width: hourLineWigth, height: h / 2 - hourLineHeight)
        hourLine.backgroundColor = hourLineColor
        minuteLine.frame = CGRect(x: w / 2 - minuteLineWidth / 2, y: minuteLineHeight, width: minuteLineWidth, height: h / 2 - minuteLineHeight)
        updateMinutesColors()
        secundeLine.frame = CGRect(x: w / 2 - secundeLineWidth / 2, y: secundeLineHeight, width: secundeLineWidth, height: h / 2 - secundeLineHeight)
        updateSecundesColors()
        
        updateHours()
        updateMinute()
        updateSecunde()
        
        layer.cornerRadius = frame.size.width / 2
        
        if isSetuped {
            return
        }
        isSetuped = true
        
        for line in [hourLine, minuteLine, secundeLine] {
            addSubview(line)
        }
    }
    
    func updateHours() {
        let angle = CGFloat.pi * 2 * (hours / CGFloat(12))
        hourLine.transform = CGAffineTransform(rotationAngle: angle)
    }
    func updateMinute() {
        let angle = CGFloat.pi * 2 * (minute / CGFloat(60))
        minuteLine.transform = CGAffineTransform(rotationAngle: angle)
    }
    func updateSecunde() {
        let angle = CGFloat.pi * 2 * (secunde / CGFloat(60))
        secundeLine.transform = CGAffineTransform(rotationAngle: angle)
    }
    func updateMinutesColors() {
        minuteLine.backgroundColor = minuteLineColor
    }
    func updateSecundesColors() {
        secundeLine.backgroundColor = secundeLineColor
    }

}
