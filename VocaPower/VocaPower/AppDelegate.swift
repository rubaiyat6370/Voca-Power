//
//  AppDelegate.swift
//  VocaPower
//
//  Created by Rubaiyat Jahan Mumu on 2020-02-16.
//  Copyright © 2020 Rubaiyat Jahan Mumu. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window?.frame = UIScreen.main.bounds
        let sb  = UIStoryboard(name: "Main", bundle: nil)
        guard let rootVC = sb.instantiateViewController(withIdentifier: "main") as? MainViewController else { return true }
        let navigationVC = UINavigationController(rootViewController: rootVC)
        window?.rootViewController = navigationVC
        window?.makeKeyAndVisible()
        return true
    }

}

