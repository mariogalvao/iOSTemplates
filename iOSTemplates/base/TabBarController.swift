//
//  TabBarController.swift
//  iOSTemplates
//
//  Created by Mário Galvao on 18/04/20.
//  Copyright © 2020 Mário Galvao. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        viewControllers = [mvc(), mvvm(), viper()]
    }
    
    private func mvc() -> UINavigationController {
        let icon = UIImage(named: "house.fill")
        let item = UITabBarItem(title: "MVC", image: icon, tag: 0)
        let viewController = MVCViewController()
        viewController.tabBarItem = item
        let navigationController = NavigationController()
        navigationController.viewControllers = [viewController]
        return navigationController
    }
    
    private func mvvm() -> UINavigationController {
        let icon = UIImage(named: "cart.fill")
        let item = UITabBarItem(title: "MVVM", image: icon, tag: 1)
        let viewController = MVVMViewController()
        viewController.tabBarItem = item
        let viewModel = MVVMViewModel(viewControllerDelegate: viewController)
        viewController.viewModelDelegate = viewModel
        let navigationController = NavigationController()
        navigationController.viewControllers = [viewController]
        return navigationController
    }
    
    private func viper() -> UINavigationController {
        let icon = UIImage(named: "person.fill")
        let item = UITabBarItem(title: "VIPER", image: icon, tag: 2)
        let viewController = VIPERViewController()
        viewController.tabBarItem = item
        let router = VIPERRouter(viewController: viewController)
        router.setUp()
        let navigationController = NavigationController()
        navigationController.viewControllers = [viewController]
        return navigationController
    }

}
