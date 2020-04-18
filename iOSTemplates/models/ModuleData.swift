//
//  ModuleData.swift
//  iOSTemplates
//
//  Created by Mário Galvao on 18/04/20.
//  Copyright © 2020 Mário Galvao. All rights reserved.
//

import UIKit

class ModuleData {
    
    var title: String
    var image: UIImage
    var text: String
    var buttonText: String
    
    init(title: String, image: UIImage, text: String, buttonText: String) {
        self.title = title
        self.image = image
        self.text = text
        self.buttonText = buttonText
    }

}
