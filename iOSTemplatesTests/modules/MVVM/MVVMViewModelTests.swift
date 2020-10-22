//
//  iOSTemplatesTests.swift
//  iOSTemplatesTests
//
//  Created by Mário Galvao on 18/04/20.
//  Copyright © 2020 Mário Galvao. All rights reserved.
//

import XCTest
@testable import iOS_Templates

class MVVMViewModelTests: XCTestCase {
    
    var viewModel: MVVMViewModel!
    var viewControllerDelegate: MVVMViewControllerProtocolMock!
    
    let text = """
        Model:
            - Data modeling
        ViewController:
            - Lifecycle
            - Rendering
        ViewModel:
            - Data Processing
            - API Requests
            - Navigation
    """

    override func setUp() {
        super.setUp()
        // Coding...
        viewControllerDelegate = MVVMViewControllerProtocolMock()
        viewModel = MVVMViewModel(viewControllerDelegate: viewControllerDelegate)
    }

    override func tearDown() {
        // Coding...
        super.tearDown()
    }

    func test_getModuleData() {
        let moduleData = viewModel.getModuleData()
        XCTAssertEqual(moduleData.title, "MVVM")
        XCTAssertEqual(moduleData.image, #imageLiteral(resourceName: "MVVM"))
        XCTAssertEqual(moduleData.text, text)
        XCTAssertEqual(moduleData.buttonText, "Ok, thanks")
    }
    
    func test_setModuleData() {
        viewModel.setModuleData(ModuleDataMock())
        XCTAssertEqual(viewControllerDelegate.count_setTitle, 1)
        XCTAssertEqual(viewControllerDelegate.count_setImage, 1)
        XCTAssertEqual(viewControllerDelegate.count_setText, 1)
        XCTAssertEqual(viewControllerDelegate.count_setButtonText, 1)
    }
    
    func test_buttonTapped() {
        viewModel.buttonTapped()
        XCTAssertEqual(viewControllerDelegate.count_alert, 1)
    }

}
