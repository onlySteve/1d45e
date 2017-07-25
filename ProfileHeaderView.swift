//
//  RegistrationHeaderView.swift
//  BugWise
//
//  Created by olbu on 6/4/17.
//  Copyright © 2017 olbu. All rights reserved.
//

import UIKit


@IBDesignable

class RegistrationHeaderView: CommonCustomUIBase {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    override func setup() {
        titleLabel.textColor = UIColor(netHex: 0x5B5B5D)
        titleLabel.font = RegularFontWithSize(size: 17)
        backgroundColor = UIColor(netHex: 0xEBEBF1)
    }
    
    func config(withText: String) {
        titleLabel.text = withText
    }
}
