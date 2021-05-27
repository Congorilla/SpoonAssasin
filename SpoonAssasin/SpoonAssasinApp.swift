//
//  SpoonAssasinApp.swift
//  SpoonAssasin
//
//  Created by Wang on 2021/3/27.
//

import SwiftUI
import Firebase

@main
struct SpoonAssasinApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        return true
    }
}
