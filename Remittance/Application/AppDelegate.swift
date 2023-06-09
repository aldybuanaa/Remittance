//
//  AppDelegate.swift
//  Remittance
//
//  Created by developer on 31/03/23.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        if #available(iOS 13, *) { /* Handled in SceneDelegate */ } else {
            let window = UIWindow(frame: UIScreen.main.bounds)
            
//            let vc = SwLangRemittanceViewController(nibName: "SwLangRemittance", bundle: nil)
//            let vc = CountriesViewController(nibName: "Countries", bundle: nil)
            let vc = MainMenuViewController(nibName: "MainMenu", bundle: nil)
            let nav = UINavigationController(rootViewController: vc)
            
            window.rootViewController = nav
            window.makeKeyAndVisible()
            self.window = window
        }
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}
