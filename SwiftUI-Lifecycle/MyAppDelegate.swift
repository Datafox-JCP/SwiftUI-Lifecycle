//
//  MyAppDelegate.swift
//  SwiftUI-Lifecycle
//
//  Created by Juan Hernandez Pazos on 07/05/22.
//

// Para que responda al AppDelegate
import UIKit

class MyAppDelegate: NSObject, UIApplicationDelegate {
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
        // Funciones aquí
        print("Mensaje del app delegate")
        return true
    }
    
    // 5. Para usar el ScenDelegate
    
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        
        let config = UISceneConfiguration(name: "Mi Scene Delegate", sessionRole: connectingSceneSession.role)
        
        // para crear nuestra propia scene, creae un clase y referenciarla
        config.delegateClass = MySceneDelegate.self
        
        return config
    }
}
