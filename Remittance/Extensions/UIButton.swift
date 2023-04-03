//
//  UIButton.swift
//  CobaLogin
//
//  Created by developer on 28/03/23.
//

import UIKit

extension UIButton {
    func applyGradient(colors: [CGColor]) {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = colors
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 0, y: 1)
        gradientLayer.frame = self.bounds
        self.layer.insertSublayer(gradientLayer, at: 0)
    }
    
    func customNextButton(){
        let button = self
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        button.applyGradient(colors: [UIColor.custom.lightGoldEzeetunai.cgColor,UIColor.custom.goldEzeetunai.cgColor])
        button.setTitle("button_next".localized(), for: .normal)
        button.layer.borderWidth = 0.5
        button.layer.borderColor = UIColor.black.cgColor
        button.layer.cornerRadius = 6
    }
}
