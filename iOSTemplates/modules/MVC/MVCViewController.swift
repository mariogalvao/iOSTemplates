//
//  MVCViewController.swift
//  iOSTemplates
//
//  Created by Mário Galvao on 18/04/20.
//  Copyright © 2020 Mário Galvao. All rights reserved.
//

import UIKit

class MVCViewController: ViewController {
    
    // MARK: Outlets
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var labelText: UILabel!
    @IBOutlet weak var buttonOk: UIButton!
    
    // MARK: Private attributes
    /// Define your private variables here
    
    // MARK: Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setModuleData(getModuleData())
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Do any additional setup before the view appears
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        // Do any additional setup before the view disappears
    }
    
    // MARK: Actions
    
    @IBAction func buttonOkTapped(_ sender: Any) {
        buttonTapped()
    }
    
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
                - Data Processing
                - API Requests
                - Navigation
        """
        let moduleData = ModuleData(title: "MVC",
                                    image: #imageLiteral(resourceName: "MVC"),
                                    text: text,
                                    buttonText: "Ok, thanks")
        return moduleData
    }
    
    // MARK: Data Processing + Rendering
    /// Proccess your data and render here
    
    func setModuleData(_ data: ModuleData) {
        title = data.title
        imageView.image = data.image
        labelText.text = data.text
        buttonOk.setTitle(data.buttonText, for: .normal)
    }
    
    // MARK: Navigation
    /// Implement your  functions to navigate to other modules here
    
    func buttonTapped() {
        alert(title: "MVC bot", message: "You're welcome.")
    }
    
}
