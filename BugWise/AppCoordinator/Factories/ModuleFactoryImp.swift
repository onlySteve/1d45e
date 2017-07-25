//
//  AuthControllersFactory.swift
//  ApplicationCoordinator
//
//  Created by Oleksandr Burov on 08.05.16.
//  Copyright © 2016 Oleksandr Burov. All rights reserved.
//

final class ModuleFactoryImp:
            LoginModuleFactory,
            SignUpModuleFactory,
            StartModuleFactory,
            PriceNotMatchModuleFactory{

    func makeLoginHandler() -> LoginView {
        return LoginController.controllerFromStoryboard(.Auth)
    }
    
    func makeSignUpHandler() -> SignUpView {
        return SignUpController.controllerFromStoryboard(.Auth)
    }
    
    
    func makeStartOutput() -> StartView {
        return StartController.controllerFromStoryboard(.Main)
    }
    
    
    func makePriceNotMatchHandler() -> PriceNotMatchView {
        return PriceNotMatchController.controllerFromStoryboard(.Main)
    }


}
