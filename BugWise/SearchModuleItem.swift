//
//  SearchTerm.swift
//  BugWise
//
//  Created by olbu on 6/12/17.
//  Copyright © 2017 olbu. All rights reserved.
//

import Foundation

import RealmSwift
import ObjectMapper

enum ModuleType: String {
    case conditions = "Conditions"
    case microbes = "Microbes"
    case drugs = "Drugs"
    
    func typeFrom(_ searchType: ModuleSearchType) -> (ModuleType) {
        switch searchType {
        case .condition: return .conditions
        case .microbe: return .microbes
        case .drug: return .drugs
        }
    }
}

enum ModuleSearchType: String {
    case condition = "Condition"
    case microbe = "Microbe"
    case drug = "Drug"
}

final class SearchModule: Object, Mappable {
    dynamic var type = ModuleSearchType.condition.rawValue
    
    var typeEnum: ModuleSearchType {
        get{
            return ModuleSearchType(rawValue: type)!
        }
        set{
            type = newValue.rawValue
        }
    }
    
    dynamic var id = 0
    dynamic var title: String?
    
    // MARK: JSON
    required convenience init?(map: Map) {
        self.init()
    }
    
    func mapping(map: Map) {
        title <- map["Name"]
        id <- map["ID"]
    }
    
    override class func primaryKey() -> String? {
        return "id"
    }
}
