//
//  ModuleDataMock.swift
//  iOSTemplatesTests
//
//  Created by Mário Galvao on 21/10/20.
//  Copyright © 2020 Mário Galvao. All rights reserved.
//

import XCTest
@testable import iOS_Templates

class ModuleDataMock: ModuleData {
    
    init() {
        super.init(title: "Title", image: #imageLiteral(resourceName: "MVC"), text: "Text", buttonText: "ButtonText")
    }

}
