//
//  CoordinatorFactory.swift
//  ApplicationCoordinator
//
//  Created by Oleksandr Burov on 21.04.16.
//  Copyright © 2016 Oleksandr Burov. All rights reserved.
//
import UIKit

final class CoordinatorFactoryImp: CoordinatorFactory {
    
    func makeLoginCoordinator(router: Router) -> Coordinator & AuthCoordinatorOutput {
            
            let coordinator = LoginCoordinator(router: router,
                                              factory: ModuleFactoryImp())
            return coordinator
    }
    
    func makeSignUpCoordinator(router: Router) ->
        Coordinator & AuthCoordinatorOutput {
            let coordinator = SignUpCoordinator(router: router,
                                               factory: ModuleFactoryImp())
            return coordinator
    }
    
    func makeStartCoordinator(router: Router) -> Coordinator & StartCoordinatorOutput {
        let coordinator = StartCoordinator(router: router, factory: ModuleFactoryImp())
        return coordinator
    }
    
    func makePriceNotMatchCoordinator(router: Router) -> Coordinator & PriceNotMatchOutput {
        let coordinator = PriceNotMatchCoordinator(router: router, factory: ModuleFactoryImp())
        return coordinator
    }

    
    //MARK: Private Helpers
    private func router(_ navController: UINavigationController?) -> Router {
        return RouterImp(rootController: navigationController(navController))
    }
    
    private func navigationController(_ navController: UINavigationController?) -> UINavigationController {
        
        if let navController = navController { return navController }
        else { return UINavigationController.controllerFromStoryboard(.Main) }
    }
}
