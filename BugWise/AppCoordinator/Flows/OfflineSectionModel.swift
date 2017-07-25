//
//  SectionModel.swift
//  BugWise
//
//  Created by olbu on 6/18/17.
//  Copyright © 2017 olbu. All rights reserved.
//

import Foundation

enum SectionType {
    case detailedText
    case header
    case surveilanceData
}

struct SectionModel {
    var items: [Any]
    var selected: Bool
//    var type: SectionType
}
