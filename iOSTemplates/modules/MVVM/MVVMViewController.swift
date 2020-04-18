//
//  MVVMViewController.swift
//  iOSTemplates
//
//  Created by Mário Galvao on 18/04/20.
//  Copyright © 2020 Mário Galvao. All rights reserved.
//

import UIKit

class MVVMViewController: ViewController {
    
    // MARK: Outlets
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var labelText: UILabel!
    @IBOutlet weak var buttonOk: UIButton!
    
    // MARK: Private attributes
    /// Define your private variables here
    
    var viewModelDelegate: MVVMViewModelProtocol?
    
    // MARK: Lifecicle

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let viewModelDelegate = self.viewModelDelegate {
            viewModelDelegate.setModuleData(viewModelDelegate.getModuleData())
        }
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
        viewModelDelegate?.buttonTapped()
    }
    
}

protocol MVVMViewControllerProtocol: ViewControllerProtocol {
    func setTitle(_ title: String)
    func setImage(_ image: UIImage)
    func setText(_ text: String)
    func setButtonText(_ buttonText: String)
}

extension MVVMViewController: MVVMViewControllerProtocol {
    
    // MARK: Rendering
    
    func setTitle(_ title: String) {
        self.title = title
    }
    
    func setImage(_ image: UIImage) {
        imageView.image = image
    }
    
    func setText(_ text: String) {
        labelText.text = text
    }
    
    func setButtonText(_ buttonText: String) {
        buttonOk.setTitle(buttonText, for: .normal)
    }
    
}
