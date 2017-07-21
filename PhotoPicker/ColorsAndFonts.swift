//
//  ColorsAndFonts.swift
//  PhotoPicker
//
//  Created by Ｍason Chang on 2017/7/21.
//  Copyright © 2017年 Ｍason Chang iOS#4. All rights reserved.
//

import Foundation
import UIKit
// Color palette

extension UIColor {

}

// Text styles

extension UIFont {
    class func asiTextStyle23Font() -> UIFont {
        return UIFont.systemFont(ofSize: 20.0, weight: UIFontWeightHeavy)
    }

}

extension UILabel {
    func addCharactersSpacing( spacing: CGFloat, text: String ) {
        let attributedString = NSMutableAttributedString(string: text)
        attributedString.addAttribute( NSKernAttributeName, value: spacing, range: NSRange(location: 0, length: text.characters.count ))
        self.attributedText = attributedString
    }
}

extension UILabel {
    func addTextSpacing() {
        if let textString = text {
            let attributedString = NSMutableAttributedString(string: textString)
            attributedString.addAttribute(NSKernAttributeName, value: 0.1, range: NSRange(location: 0, length: attributedString.length - 1))
            attributedText = attributedString
        }
    }
}
