//
//  MVVMViewModel.swift
//  iOSTemplates
//
//  Created by Mário Galvao on 18/04/20.
//  Copyright © 2020 Mário Galvao. All rights reserved.
//

import UIKit

class MVVMViewModel: ViewModel {
    
    var viewControllerDelegate: MVVMViewControllerProtocol
    
    init(viewControllerDelegate: MVVMViewControllerProtocol) {
        self.viewControllerDelegate = viewControllerDelegate
    }
    
}

protocol MVVMViewModelProtocol {
    
    func getModuleData() -> ModuleData
    func setModuleData(_ data: ModuleData)
    func buttonTapped()
    
}

extension MVVMViewModel: MVVMViewModelProtocol {
    
    // MARK: API Requests
    /// Implement your API functions here
    
    func getModuleData() -> ModuleData {
        // Mocking the result, just for an example
        let text = """
            Model:
                - Data modeling
            ViewController:
                - Lifecycle
                - Rendering
            ViewModel:
                - Data Processing
                - API Requests
                - Navigation
        """
        let moduleData = ModuleData(title: "MVVM",
                                    image: #imageLiteral(resourceName: "MVVM"),
                                    text: text,
                                    buttonText: "Ok, thanks")
        return moduleData
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
    /// Implement your  functions to navigate to other modules here
    
    func buttonTapped() {
        viewControllerDelegate.alert(title: "MVVM bot", message: "You're welcome.")
    }
    
}
