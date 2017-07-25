//
//  CoordinatorFactory.swift
//  ApplicationCoordinator
//
//  Created by Oleksandr Burov on 24/05/16.
//  Copyright © 2016 Oleksandr Burov. All rights reserved.
//

import UIKit

protocol CoordinatorFactory {
    
    func makeLoginCoordinator(router: Router) -> Coordinator & AuthCoordinatorOutput
    
    func makeSignUpCoordinator(router: Router) ->
        Coordinator & AuthCoordinatorOutput
    
    func makeStartCoordinator(router: Router) -> Coordinator & StartCoordinatorOutput
    
    func makePriceNotMatchCoordinator(router: Router) -> Coordinator & PriceNotMatchOutput
    
}
