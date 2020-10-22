//
//  ViewControllerProtocolMock.swift
//  iOSTemplatesTests
//
//  Created by Mário Galvao on 21/10/20.
//  Copyright © 2020 Mário Galvao. All rights reserved.
//

import XCTest
@testable import iOS_Templates

class ViewControllerProtocolMock: ViewControllerProtocol {

    var count_alert = 0
    
    func alert(title: String, message: String) {
        count_alert += 1
    }
    
}
