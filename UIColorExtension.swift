//
//  UIColorExtension.swift
//  KidCalculator
//
//  Created by Aidy Sun on 2020/3/12.
//  Copyright © 2020 Aidy. All rights reserved.
//

import UIKit
import Foundation

extension UIColor {
    private class func rgbValue(_ f: CGFloat) -> CGFloat {
        return f / 255
    }
    
    class func initWithRGB255(red r: CGFloat, green g: CGFloat, blue b: CGFloat, alpha a:  CGFloat = 1.0) -> UIColor {
        return UIColor(red: rgbValue(r), green: rgbValue(g), blue: rgbValue(b), alpha: a)
    }
}

