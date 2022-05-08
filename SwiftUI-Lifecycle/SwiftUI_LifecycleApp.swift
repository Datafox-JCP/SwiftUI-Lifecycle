//
//  SwiftUI_LifecycleApp.swift
//  SwiftUI-Lifecycle
//
//  Created by Juan Hernandez Pazos on 07/05/22.
//

import SwiftUI

// 1. @main es donde inicia el app - reemplaza App Delegate
@main
struct SwiftUI_LifecycleApp: App {
    
    // 4. Si se necesita algún método del AppDelegate
    // 4. Hay que crear una clase con el AppDelegate a usar
    @UIApplicationDelegateAdaptor(MyAppDelegate.self) var appDelegate
    
    // 3. Para manejar lo que ocurre cuando el app va al background, guardar states. etc
    @Environment(\.scenePhase) var scenePhase  // un scenaPhase una forma de controlar el estado de una escena
    
    init() {
        // 2. Configurar librerías
        doSomenthing() // recomendado ejecutar funciones
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        // 3.
        .onChange(of: scenePhase) { phase in
            switch phase {
            case .active:
                print("Activa")
            case .inactive:
                print("Inactiva")
            case .background:
                print("Background")
            @unknown default:
                print("Algo nuevo añadido por Apple")
            }
        }
    }
    
    // 2. cont
    func doSomenthing() {
        // 4. Después de la clase
        // appDelegate.
    }
}
