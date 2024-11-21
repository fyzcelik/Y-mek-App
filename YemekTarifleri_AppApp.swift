//
//  YemekTarifleri_AppApp.swift
//  YemekTarifleri_App
//
//  Created by Feyza Çelik on 12.01.2024.
//

import SwiftUI
import SwiftData
import Firebase

@main
struct YemekTarifleri_AppApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var  delegate
    @StateObject var tarifGorunumuModeli = TarifGorunumuModeli()
   

    var body: some Scene {
        WindowGroup {
            SplashEkrani()
                .environmentObject(tarifGorunumuModeli)
        }
    }
}

// initializingfirebase
class AppDelegate : NSObject,UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
        FirebaseApp.configure()
        return true
    }
    
    // needed for firebase phone auth
    func application(_ application: UIApplication, didReceiveRemoteNotification userInfo: [AnyHashable : Any], fetchCompletionHandler completionHandler: @escaping (UIBackgroundFetchResult) -> Void) {
            }
}
