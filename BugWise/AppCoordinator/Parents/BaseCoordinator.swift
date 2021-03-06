//
//  BaseCoordinator.swift
//  ApplicationCoordinator
//
//  Created by Oleksandr Burov on 28.04.16.
//  Copyright © 2016 Oleksandr Burov. All rights reserved.
//

class BaseCoordinator: Coordinator {
    
    var childCoordinators: [Coordinator] = []

    func start() {
        assertionFailure("must be overriden")
    }
    
    // add only unique object
    func addDependency(_ coordinator: Coordinator) {
        
        for element in childCoordinators {
            if element === coordinator { return }
        }
        childCoordinators.append(coordinator)
    }
    
    func removeDependency(_ coordinator: Coordinator?) {
        guard
            childCoordinators.isEmpty == false,
            let coordinator = coordinator
            else { return }
        
        for (index, element) in childCoordinators.enumerated() {
            if element === coordinator {
                childCoordinators.remove(at: index)
                break
            }
        }
    }
}
