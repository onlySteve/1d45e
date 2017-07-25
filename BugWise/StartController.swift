//
//  StarterViewController.swift
//  BugWise
//
//  Created by olbu on 5/30/17.
//  Copyright © 2017 olbu. All rights reserved.
//

import UIKit

// MARK:- Protocol

protocol StartModuleFactory {
    func makeStartOutput() -> StartView
}

// MARK:- Implementation
final class StarterViewController: UIViewController, StartView {

    // MARK:- Controller handler
    var onFlowSelect: (StartFlowSelect)?
    
    
    // MARK:- Actions
    @IBAction func patientButtonAction(_ sender: UIButton) {
        onFlowSelect?(.patient)
    }
    
    @IBAction func healthCareProviderAction(_ sender: UIButton) {
        onFlowSelect?(.healthCareProvider)
    }
}


// MARK:- Factory
final class StartControllerFactory: StartModuleFactory {
    func makeStartOutput() -> StartView {
        return StarterViewController.controllerFromStoryboard(.start)
    }
}
