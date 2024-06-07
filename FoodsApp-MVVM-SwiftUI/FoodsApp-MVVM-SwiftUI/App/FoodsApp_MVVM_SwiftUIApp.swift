//
//  FoodsApp_MVVM_SwiftUIApp.swift
//  FoodsApp-MVVM-SwiftUI
//
//  Created by Sabri DİNDAR on 7.06.2024.
//

import SwiftUI
import FirebaseCore

@main
struct FoodsApp_MVVM_SwiftUIApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        WindowGroup {
            HomeView()
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        
        return true
    }
}
