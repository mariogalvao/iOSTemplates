//
//  VIPERInteractor.swift
//  iOSTemplates
//
//  Created by Mário Galvao on 18/04/20.
//  Copyright © 2020 Mário Galvao. All rights reserved.
//

import UIKit

protocol VIPERInteractorProtocol: InteractorProtocol {
    
    func getModuleData() -> ModuleData
    
}

class VIPERInteractor: VIPERInteractorProtocol {
    
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
            Presenter:
                - Data Processing
            Interactor:
                - API Requests
            Router:
                - Navigation
        """
        let moduleData = ModuleData(title: "VIPER",
                                    image: #imageLiteral(resourceName: "VIPER"),
                                    text: text,
                                    buttonText: "Ok, thanks")
        return moduleData
    }
    
}
