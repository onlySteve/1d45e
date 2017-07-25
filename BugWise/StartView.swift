//
//  StarterView.swift
//  BugWise
//
//  Created by olbu on 6/2/17.
//  Copyright © 2017 olbu. All rights reserved.
//

import Foundation

// MARK:- Protocol

protocol StartModuleFactory {
    func makeStartOutput() -> StartView
}

//MARK:- Factory

func makeStartOutput() -> StartView {
    return StartController.controllerFromStoryboard(.Main)
}
