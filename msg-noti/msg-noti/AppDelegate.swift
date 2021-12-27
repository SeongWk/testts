//
//  AppDelegate.swift
//  msg-noti
//
//  Created by seong_wook_lim on 2021/12/13.
//

import UIKit
import UserNotifications

@main
class AppDelegate: UIResponder, UIApplicationDelegate, UNUserNotificationCenterDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        if #available(iOS 10.0, *)
        {
            let noticenter = UNUserNotificationCenter.current()
            noticenter.requestAuthorization(options: [.alert,.badge,.sound])
            {(didALlow,e) in}
            noticenter.delegate = self
        }
            else
            {
                
            }
        
        // Override point for customization after application launch.
        return true
    }
    func applicationWillResignActive(_ application: UIApplication) {
        if #available(iOS 10.0, *)
        {
            UNUserNotificationCenter.current().getNotificationSettings{
                settings in if settings.authorizationStatus == UNAuthorizationStatus.authorized{
                    let nContent = UNMutableNotificationContent()
                    nContent.badge = 1
                    nContent.title = "local message"
                    nContent.subtitle = "open"
                    nContent.body = "Come On"
                    nContent.sound = UNNotificationSound.default
                    nContent.userInfo = ["name": "SeongWook"]
                    let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
                    let request = UNNotificationRequest(identifier: "wakeup", content: nContent, trigger: trigger)
                    UNUserNotificationCenter.current().add(request)
                    
                }else{
                    print("not allow")
                }
                            
                                
                                
            }
        }
    }
    @available(iOS 10.0, *)
    func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler:@escaping(UNNotificationPresentationOptions)->Void) {
        if notification.request.identifier == "wakeup"
        {
            let userinfo = notification.request.content.userInfo
            print(userinfo["name"]!)
        }
        completionHandler([.alert,.badge,.sound])
    }
    @available(iOS 10.0, *)
    func userNotificationCenter(_ center: UNUserNotificationCenter, didreceive response: UNNotificationResponse, withCompletionHandler completionHandler:@escaping()->Void) {
        if response.notification.request.identifier == "wakeup"
        {
            let userinfo = response.notification.request.content.userInfo
            print(userinfo["name"]!)
        }
        completionHandler()
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

