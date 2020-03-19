//
//  ColorCompatibility.swift
//  DarkMode
//
//  Created by dan wang on 2020/3/19.
//  Copyright © 2020 dan wang. All rights reserved.
//

import UIKit

enum ColorCompatibility {
    static var systemRed: UIColor {
        if #available(iOS 13, *) {
            return .systemRed
        }
        return UIColor(hex:0xff3b30)!
    }
    
    static var systemGreen: UIColor {
        if #available(iOS 13, *) {
            return .systemGreen
        }
        return UIColor(hex:0x34c759)!
    }
    
    static var systemBlue: UIColor {
        if #available(iOS 13, *) {
            return .systemBlue
        }
        return UIColor(hex:0x007aff)!
    }
    
    static var systemOrange: UIColor {
        if #available(iOS 13, *) {
            return .systemOrange
        }
        return UIColor(hex:0xff9500)!
    }
    
    static var systemYellow: UIColor {
        if #available(iOS 13, *) {
            return .systemYellow
        }
        return UIColor(hex:0xffcc00)!
    }
    
    static var systemPink: UIColor {
        if #available(iOS 13, *) {
            return .systemPink
        }
        return UIColor(hex:0xff2d55)!
    }
    
    static var systemPurple: UIColor {
        if #available(iOS 13, *) {
            return .systemPurple
        }
        return UIColor(hex:0xaf52de)!
    }
    
    static var systemTeal: UIColor {
        if #available(iOS 13, *) {
            return .systemTeal
        }
        return UIColor(hex:0x5ac8fa)!
    }
    
    static var systemIndigo: UIColor {
        if #available(iOS 13, *) {
            return .systemIndigo
        }
        return UIColor(hex:0x5856d6)!
    }
    
    static var systemGray: UIColor {
        if #available(iOS 13, *) {
            return .systemGray
        }
        return UIColor(hex:0x8e8e93)!
    }
    
    static var systemGray2: UIColor {
        if #available(iOS 13, *) {
            return .systemGray2
        }
        return UIColor(hex:0xaeaeb2)!
    }
    
    static var systemGray3: UIColor {
        if #available(iOS 13, *) {
            return .systemGray3
        }
        return UIColor(hex:0xc7c7cc)!
    }
    
    static var systemGray4: UIColor {
        if #available(iOS 13, *) {
            return .systemGray4
        }
        return UIColor(hex:0xd1d1d6)!
    }
    
    static var systemGray5: UIColor {
        if #available(iOS 13, *) {
            return .systemGray5
        }
        return UIColor(hex:0xe5e5ea)!
    }
    
    static var systemGray6: UIColor {
        if #available(iOS 13, *) {
            return .systemGray6
        }
        return UIColor(hex:0xf2f2f7)!
    }
    
    static var label: UIColor {
        if #available(iOS 13, *) {
            return .label
        }
        return UIColor.black
    }
    
    static var secondaryLabel: UIColor {
        if #available(iOS 13, *) {
            return .secondaryLabel
        }
        return UIColor(hex:0x3c3c4399)!
    }
    
    static var tertiaryLabel: UIColor {
        if #available(iOS 13, *) {
            return .tertiaryLabel
        }
        return UIColor(hex:0x3c3c434c)!
    }
    
    static var quaternaryLabel: UIColor {
        if #available(iOS 13, *) {
            return .quaternaryLabel
        }
        return UIColor(hex:0x3c3c432d)!
    }
    
    static var link: UIColor {
        if #available(iOS 13, *) {
            return .link
        }
        return UIColor(hex:0x007aff)!
    }
    
    static var placeholderText: UIColor {
        if #available(iOS 13, *) {
            return .placeholderText
        }
        return UIColor(hex:0x3c3c433c)!
    }
    
    static var separator: UIColor {
        if #available(iOS 13, *) {
            return .separator
        }
        return UIColor(hex:0x3c3c4349)!
    }
    
    static var opaqueSeparator: UIColor {
        if #available(iOS 13, *) {
            return .opaqueSeparator
        }
        return UIColor(hex:0xc6c6c8)!
    }
    
    static var systemBackground: UIColor {
        if #available(iOS 13, *) {
            return .systemBackground
        }
        return UIColor.white
    }
    
    static var secondarySystemBackground: UIColor {
        if #available(iOS 13, *) {
            return .secondarySystemBackground
        }
        return UIColor(hex:0xf2f2f7)!
    }
    
    static var tertiarySystemBackground: UIColor {
        if #available(iOS 13, *) {
            return .tertiarySystemBackground
        }
        return UIColor.white
    }
    
    static var systemGroupedBackground: UIColor {
        if #available(iOS 13, *) {
            return .systemGroupedBackground
        }
        return UIColor(hex:0xf2f2f7)!
    }
}
