//
//  VIPERPresenter.swift
//  iOSTemplates
//
//  Created by Mário Galvao on 18/04/20.
//  Copyright © 2020 Mário Galvao. All rights reserved.
//

import UIKit

class VIPERPresenter: ViewModel {
    
    var viewControllerDelegate: VIPERViewControllerProtocol
    var interactorDelegate: VIPERInteractorProtocol
    var routerDelegate: VIPERRouterProtocol
    
    init(viewControllerDelegate: VIPERViewControllerProtocol,
         interactorDelegate: VIPERInteractorProtocol,
         routerDelegate: VIPERRouterProtocol) {
        self.viewControllerDelegate = viewControllerDelegate
        self.interactorDelegate = interactorDelegate
        self.routerDelegate = routerDelegate
    }
    
}

protocol VIPERPresenterProtocol {
    
    func getModuleData() -> ModuleData
    func setModuleData(_ data: ModuleData)
    func buttonTapped()
    
}

extension VIPERPresenter: VIPERPresenterProtocol {
    
    // MARK: API Requests
    /// Delegate to Interactor
    
    func getModuleData() -> ModuleData {
        return interactorDelegate.getModuleData()
    }
    
    // MARK: Data Processing
    /// Proccess your data here
    
    func setModuleData(_ data: ModuleData) {
        viewControllerDelegate.setTitle(data.title)
        viewControllerDelegate.setImage(data.image)
        viewControllerDelegate.setText(data.text)
        viewControllerDelegate.setButtonText(data.buttonText)
    }
    
    // MARK: Navigation
    /// Delegate to Router
    
    func buttonTapped() {
        routerDelegate.alert(title: "VIPER bot", message: "You're welcome.")
    }
    
}
