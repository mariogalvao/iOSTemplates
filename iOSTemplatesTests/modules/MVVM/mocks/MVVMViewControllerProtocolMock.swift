//
//  MVVMViewControllerProtocolMock.swift
//  iOSTemplatesTests
//
//  Created by Mário Galvao on 21/10/20.
//  Copyright © 2020 Mário Galvao. All rights reserved.
//

import XCTest
@testable import iOS_Templates

class MVVMViewControllerProtocolMock: ViewControllerProtocolMock, MVVMViewControllerProtocol {
    
    var count_setTitle = 0
    var count_setImage = 0
    var count_setText = 0
    var count_setButtonText = 0
    
    func setTitle(_ title: String) {
        count_setTitle += 1
    }
    
    func setImage(_ image: UIImage) {
        count_setImage += 1
    }
    
    func setText(_ text: String) {
        count_setText += 1
    }
    
    func setButtonText(_ buttonText: String) {
        count_setButtonText += 1
    }
    
}
