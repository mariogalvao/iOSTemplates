//
//  ViewControllerTests.swift
//  iOSTemplatesTests
//
//  Created by Mário Galvao on 22/10/20.
//  Copyright © 2020 Mário Galvao. All rights reserved.
//

import XCTest
@testable import iOS_Templates

class ViewControllerTests: XCTestCase {
    
    var viewController: ViewController!
    
    override func setUp() {
        super.setUp()
        // Coding...
        viewController = ViewController()
        viewController.view.awakeFromNib()
        UIApplication.shared.windows.first?.rootViewController = viewController
    }
    
    override func tearDown() {
        // Coding...
        super.tearDown()
    }
    
    func test_alert() {
        viewController.alert(title: "Title", message: "Message")
        
        let expectation = XCTestExpectation(description: "test_alert")
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0, execute: {
            let vc = UIApplication.shared.windows.first?.rootViewController?.presentedViewController as? UIAlertController
            XCTAssertNotNil(vc)
            XCTAssertEqual(vc?.title, "Title")
            XCTAssertEqual(vc?.message, "Message")
            expectation.fulfill()
        })
        wait(for: [expectation], timeout: 1.5)
    }

}
