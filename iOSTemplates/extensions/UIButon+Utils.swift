//
//  UIButon+Utils.swift
//  iOSTemplates
//
//  Created by Mário Galvao on 18/04/20.
//  Copyright © 2020 Mário Galvao. All rights reserved.
//

import UIKit

@IBDesignable extension UIButton {
    
    @IBInspectable var cornerRadius: CGFloat {
        set {
            layer.cornerRadius = newValue
        }
        get {
            return layer.cornerRadius
        }
    }
    
}
