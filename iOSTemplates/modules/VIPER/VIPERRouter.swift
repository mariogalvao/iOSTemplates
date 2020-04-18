//
//  VIPERRouter.swift
//  iOSTemplates
//
//  Created by Mário Galvao on 18/04/20.
//  Copyright © 2020 Mário Galvao. All rights reserved.
//

import UIKit

class VIPERRouter: Router {
    
    var viewController: VIPERViewController
    
    init(viewController: VIPERViewController) {
        self.viewController = viewController
    }
    
    func setUp() {
        let interactor = VIPERInteractor()
        let presenter = VIPERPresenter(viewControllerDelegate: viewController,
                                       interactorDelegate: interactor,
                                       routerDelegate: self)
        viewController.presenterDelegate = presenter
    }

}

protocol VIPERRouterProtocol: RouterProtocol {
    
    func alert(title: String, message: String)
    
}

extension VIPERRouter: VIPERRouterProtocol {
    
    // MARK: Navigate
    /// Implement your  functions to navigate to other modules here
    
    func alert(title: String, message: String) {
        viewController.alert(title: title, message: message)
    }
    
}
