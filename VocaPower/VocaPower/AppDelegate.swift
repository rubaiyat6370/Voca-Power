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
//        let sb  = UIStoryboard(name: "Main", bundle: nil)
//        guard let rootVC = sb.instantiateViewController(withIdentifier: "main") as? MainViewController else { return true }
        let rootVC = TestViewController(nibName: "TestViewController", bundle: nil)
        let navigationVC = UINavigationController(rootViewController: rootVC)
        navigationVC.navigationBar.barTintColor = UIColor(red: 88.0/255.0, green: 86.0/255.0, blue: 214.0/255.0, alpha: 1) //barTintColor
        navigationVC.navigationBar.tintColor = UIColor.white
        let textAttributes = [NSAttributedString.Key.foregroundColor:UIColor.white]
        navigationVC.navigationBar.titleTextAttributes = textAttributes
       
        window?.rootViewController = navigationVC
        window?.makeKeyAndVisible()
        return true
    }

}

extension UINavigationController {
    override open func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        let backButton = UIBarButtonItem(title: " ", style: .plain, target: nil, action: nil)
        self.topViewController?.navigationItem.backBarButtonItem = backButton
    }
}

