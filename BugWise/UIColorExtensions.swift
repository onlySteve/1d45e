//
//  UIColorExtensions.swift
//  GEMS
//
//  Created by Vitaliy Malakhovskiy on 9/29/15.
//  Copyright (c) 2015 Stanfy LLC. All rights reserved.
//

import UIKit

extension UIColor {
    convenience init(red: Int, green: Int, blue: Int) {
        func keepColorInsideRanges(color: Int) -> Int {
            if color < 0 {
                return 0
            } else if color > 255 {
                return 255
            }
            return color
        }
        let redColor = keepColorInsideRanges(red)
        let greenColor = keepColorInsideRanges(green)
        let blueColor = keepColorInsideRanges(blue)

        self.init(
            red: CGFloat(redColor) / 255.0,
            green: CGFloat(greenColor) / 255.0,
            blue: CGFloat(blueColor) / 255.0,
            alpha: 1.0
        )
    }
    
    convenience init(netHex: Int) {
        self.init(red: (netHex >> 16) & 0xff, green: (netHex >> 8) & 0xff, blue: netHex & 0xff)
    }

    convenience init(hexStr: String) {
        let trimmedHex = hexStr.stringByTrimmingCharactersInSet(NSCharacterSet.hexadecimalCharacterSet().invertedSet)
        if let netHex = Int(trimmedHex, radix: 16) where trimmedHex.characters.count == 6 {
            self.init(netHex: netHex)
        } else {
            self.init(red: 255, green: 255, blue: 255, alpha: 1.0)
        }
    }
}
