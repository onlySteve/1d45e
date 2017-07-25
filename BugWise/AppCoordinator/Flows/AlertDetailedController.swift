//
//  AlertContentController.swift
//  BugWise
//
//  Created by olbu on 6/11/17.
//  Copyright © 2017 olbu. All rights reserved.
//

class AlertDetailedController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var subTitleLabel: UILabel!
    @IBOutlet weak var contentLabel: UILabel!
    
    private var alert: AlertModel = AlertModel()
    
    override func viewDidLoad() {
        
        titleLabel.text = alert.title
        titleLabel.font = BoldFontWithSize(size: 19)
        titleLabel.textColor = CommonAppearance.blueColor
        
        subTitleLabel.textColor = CommonAppearance.boldGrayColor
        subTitleLabel.text = alert.subTitle
        subTitleLabel.font = RegularFontWithSize(size: 17)
        contentLabel.attributedText = alert.content?.stringFromHtml()
    }
    
    
    static func controller(with alert: AlertModel) -> AlertDetailedController {
        let controller = AlertDetailedController.controllerFromStoryboard(.home)
        
        controller.alert = alert

        return controller
    }
}
