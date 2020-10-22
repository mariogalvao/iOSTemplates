//
//  MVVMViewModelProtocolMock.swift
//  iOSTemplatesTests
//
//  Created by Mário Galvao on 21/10/20.
//  Copyright © 2020 Mário Galvao. All rights reserved.
//

import XCTest
@testable import iOS_Templates

class MVVMViewModelProtocolMock: ViewModelProtocolMock, MVVMViewModelProtocol {
    
    var count_getModuleData = 0
    var count_setModuleData = 0
    var count_buttonTapped = 0
    
    func getModuleData() -> ModuleData {
        count_getModuleData += 1
        return ModuleDataMock()
    }
    
    func setModuleData(_ data: ModuleData) {
        count_setModuleData += 1
    }
    
    func buttonTapped() {
        count_buttonTapped += 1
    }
    
}
