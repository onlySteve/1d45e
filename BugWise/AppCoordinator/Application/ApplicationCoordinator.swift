//
//  ApplicationCoordinator.swift
//  ApplicationCoordinator
//
//  Created by Oleksandr Burov on 21.02.16.
//  Copyright © 2016 Oleksandr Burov. All rights reserved.
//

import UIKit
import RxSwift

final class ApplicationCoordinator: BaseCoordinator {

    private let coordinatorFactory: CoordinatorFactory
    private let router: Router
    
    init(router: Router, coordinatorFactory: CoordinatorFactory) {
        
        self.router = router
        self.coordinatorFactory = coordinatorFactory
    }
    
    override func start() {
        let coordinator = coordinatorFactory.makeStartCoordinator(router: router)
        coordinator.finishFlow = runMenuItemFlow()
        addDependency(coordinator)
        coordinator.start()
    }
    
    private func runMenuItemFlow() -> MenuItemSelectAction {
        return { menuItem in
            switch menuItem {
            case .Login:
                self.runLoginFlow()
                break
            case .SignUp:
                self.runSignUpFlow()
                break
            case .PriceNotMatch:
                self.runPriceNotMatchFlow()
                break
            default:
                break
            }
        }
    }
    
    
    //MARK: - Run coordinators (switch to another flow)
    private func runLoginFlow() {
        let coordinator = coordinatorFactory.makeLoginCoordinator(router: router)
        coordinator.finishFlow = { [weak self, weak coordinator] in
            self?.router.popModule(animated: true)
            self?.removeDependency(coordinator)
        }
        
        addDependency(coordinator)
        coordinator.start()
    }

    private func runSignUpFlow() {
        let coordinator = coordinatorFactory.makeSignUpCoordinator(router: router)
        coordinator.finishFlow = { [weak self, weak coordinator] in
            self?.router.popModule(animated: true)
            self?.removeDependency(coordinator)
        }
        
        addDependency(coordinator)
        coordinator.start()
    }
    
    private func runPriceNotMatchFlow() {
        let coordinator = coordinatorFactory.makePriceNotMatchCoordinator(router: router)
        coordinator.finishFlow = { [weak self, weak coordinator] in
            self?.router.popModule(animated: true)
            self?.removeDependency(coordinator)
        }
        
        addDependency(coordinator)
        coordinator.start()
    }
    
    private func runSearchFlow() -> ((UINavigationController) -> ()) {
        return { navController in
            if navController.viewControllers.isEmpty == true {
//                let itemCoordinator = self.coordinatorFactory.makeItemCoordinator(navController: navController)
//                itemCoordinator.start()
//                self.addDependency(itemCoordinator)
            }
        }
    }
//
}
