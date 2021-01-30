//
//  UIColor-Extension.swift
//  MatchingApp
//
//  Created by Uske on 2021/01/30.
//

import UIKit

extension UIColor {
    
    static func rgb(red: CGFloat, green: CGFloat, blue: CGFloat) -> UIColor {
        return .init(red: red / 255, green: green / 255, blue: blue / 255, alpha: 1)
    }
    
}
