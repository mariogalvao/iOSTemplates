//
//  iOSTemplatesTests.swift
//  iOSTemplatesTests
//
//  Created by Mário Galvao on 18/04/20.
//  Copyright © 2020 Mário Galvao. All rights reserved.
//

import XCTest
@testable import iOS_Templates

class MVVMViewControllerTests: XCTestCase {
    
    var viewController: MVVMViewController!
    var viewModelDelegate: MVVMViewModelProtocolMock!

    override func setUp() {
        super.setUp()
        // Coding...
        viewModelDelegate = MVVMViewModelProtocolMock()
        viewController = MVVMViewController()
        viewController.viewModelDelegate = viewModelDelegate
        viewController.view.awakeFromNib()
        UIApplication.shared.windows.first?.rootViewController = viewController
    }

    override func tearDown() {
        // Coding...
        super.tearDown()
    }

    func test_ViewDidLoad() {
        XCTAssertEqual(viewModelDelegate.count_getModuleData, 1)
        XCTAssertEqual(viewModelDelegate.count_setModuleData, 1)
    }
    
    func test_buttonOkTapped() {
        viewController.buttonOkTapped(viewController.buttonOk)
        XCTAssertEqual(viewModelDelegate.count_buttonTapped, 1)
    }
    
    func test_setTitle() {
        viewController.setTitle("Title")
        XCTAssertEqual(viewController.title, "Title")
    }
    
    func test_setImage() {
        viewController.setImage(#imageLiteral(resourceName: "MVC"))
        XCTAssertEqual(viewController.imageView.image, #imageLiteral(resourceName: "MVC"))
    }
    
    func test_setText() {
        viewController.setText("Text")
        XCTAssertEqual(viewController.labelText.text, "Text")
    }
    
    func test_setButtonText() {
        viewController.setButtonText("ButtonText")
        XCTAssertEqual(viewController.buttonOk.title(for: .normal), "ButtonText")
    }

}
