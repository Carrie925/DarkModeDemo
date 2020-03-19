//
//  UIColorExtension.swift
//  DarkMode
//
//  Created by dan wang on 2020/3/18.
//  Copyright © 2020 dan wang. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    
    func hexString() -> String {
        var r: CGFloat = 0
        var g: CGFloat = 0
        var b: CGFloat = 0
        var a: CGFloat = 0
        var hexString: String = ""
        
        guard getRed(&r, green: &g, blue: &b, alpha: &a) else {
            return ""
        }
        if a == 1.0 {
            hexString = String(format: "0x%0.2X%0.2X%0.2X",UInt(r*255),UInt(g*255),UInt(b*255))
        } else {
            hexString = String(format: "0x%0.2X%0.2X%0.2X%0.2X",UInt(r*255),UInt(g*255),UInt(b*255), UInt(a*255))
        }
        return hexString
    }
    
    convenience init?(hex: Int, transparency: CGFloat = 1) {
        var trans = transparency
        if trans < 0 { trans = 0 }
        if trans > 1 { trans = 1 }

        let red = (hex >> 16) & 0xff
        let green = (hex >> 8) & 0xff
        let blue = hex & 0xff
       
        self.init(red: CGFloat(red), green: CGFloat(green), blue: CGFloat(blue), alpha: CGFloat(trans))
    }
    
}
