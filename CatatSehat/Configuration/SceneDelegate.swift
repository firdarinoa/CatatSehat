//
//  SceneDelegate.swift
//  CatatSehat
//
//  Created by Firda Sahidi on 04/06/20.
//  Copyright © 2020 Firda Sahidi. All rights reserved.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        if let windowScene = scene as? UIWindowScene {
            let window = UIWindow(windowScene: windowScene)
            window.rootViewController = JAViewController()
            self.window = window
            window.makeKeyAndVisible()
        }
    }
}

