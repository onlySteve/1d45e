//
//  PageContentController.swift
//  BugWise
//
//  Created by olbu on 6/10/17.
//  Copyright © 2017 olbu. All rights reserved.
//

import UIKit

class PageContentViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var subTitle: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var detailButton: UIButton!
    
    var pageIndex: Int = 0
    var titleStr: String!
    var subTitleStr: String!
    var imageName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.font = BoldFontWithSize(size: 17)
        subTitle.font = RegularFontWithSize()
        
//        imageView.image = UIImage(named: "")
        
        titleLabel.text = titleStr
        
        subTitle.text = subTitleStr
        
    }
}
