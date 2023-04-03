//
//  UIVIew.swift
//  CobaLogin
//
//  Created by developer on 28/03/23.
//

import UIKit

extension UIView {
    func dropShadow(scale: Bool = true) {
        layer.masksToBounds = false
        layer.shadowColor = UIColor.gray.cgColor
        layer.shadowOpacity = 0.2
        layer.shadowOffset = CGSize(width: 0, height: 2)
        layer.shadowRadius = 6
        layer.shouldRasterize = true
        layer.rasterizationScale = scale ? UIScreen.main.scale : 1
    }
    
    func bottomShadow() {
        layer.masksToBounds = false
        layer.shadowColor = UIColor.gray.cgColor
        layer.shadowOpacity = 0.5
        layer.shadowOffset = CGSize(width: 0, height: -10)
        layer.shadowRadius = 2
    }
    
    func borderTextFieldBox(){
        layer.borderWidth = 0.5
        layer.borderColor = UIColor.lightGray.cgColor
    }
}
