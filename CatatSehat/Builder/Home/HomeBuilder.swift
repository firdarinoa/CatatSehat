//
//  HomeBuilder.swift
//  CatatSehat
//
//  Created by Firda Sahidi on 04/06/20.
//  Copyright (c) 2020 Firda Sahidi. All rights reserved.
//

import UIKit

struct HomeBuilder {
    
    static func viewController() -> UIViewController {
        let viewModel = HomeViewModel()
        let router = HomeRouter()
        let viewController = HomeViewController(withViewModel: viewModel, router: router)
        router.viewController = viewController
        
        return viewController
    }
    
    static func boardViewController() -> UIViewController {
        let viewModel = HomeViewModel()
        let router = HomeRouter()
        
        let viewController = HomeViewController(nibName: "Home", bundle: Bundle.main)
        viewController.load(withViewModel: viewModel, router: router)
        
        
        router.viewController = viewController
        
        return viewController
    }
}
