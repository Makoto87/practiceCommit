//
//  AppDelegate.swift
//  MemoAppRestudy
//
//  Created by VERTEX20 on 2019/08/03.
//  Copyright © 2019 VERTEX20. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    var lastText: String?
    
    //スプラッシュ画面のときに流れる
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        //前保存したものを取り出す
        let userDefaults = UserDefaults.standard
        lastText = userDefaults.object(forKey: "lastText") as? String
        return true
    }

    //アプリ消すときに流れる
    func applicationWillResignActive(_ application: UIApplication) {
        //書いていたものを保存。userDefaultsに保存
        let userDefaults = UserDefaults.standard
        userDefaults.set(lastText, forKey: "lastText")
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

