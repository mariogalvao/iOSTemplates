//
//  iOSTemplatesTests.swift
//  iOSTemplatesTests
//
//  Created by Mário Galvao on 18/04/20.
//  Copyright © 2020 Mário Galvao. All rights reserved.
//

import XCTest
@testable import iOS_Templates

class MVCViewControllerTests: XCTestCase {
    
    var viewController: MVCViewController!
    
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

    override func setUp() {
        super.setUp()
        // Coding...
        viewController = MVCViewController()
        viewController.view.awakeFromNib()
        UIApplication.shared.windows.first?.rootViewController = viewController
    }

    override func tearDown() {
        // Coding...
        super.tearDown()
    }

    func test_viewDidLoad() {
        XCTAssertEqual(viewController.title, "MVC")
        XCTAssertEqual(viewController.imageView.image, #imageLiteral(resourceName: "MVC"))
        XCTAssertEqual(viewController.labelText.text, text)
        XCTAssertEqual(viewController.labelText.text, text)
    }
    
    func test_buttonOkTapped() {
        viewController.buttonOkTapped(viewController.buttonOk)
        
        let expectation = XCTestExpectation(description: "testButtonOkTapped")
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0, execute: {
            let vc = UIApplication.shared.windows.first?.rootViewController?.presentedViewController as? UIAlertController
            XCTAssertNotNil(vc)
            XCTAssertEqual(vc?.title, "MVC bot")
            XCTAssertEqual(vc?.message, "You're welcome.")
            expectation.fulfill()
        })
        wait(for: [expectation], timeout: 1.5)
    }

}
