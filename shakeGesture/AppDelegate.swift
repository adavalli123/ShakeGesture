//
//  AppDelegate.swift
//  shakeGesture
//
//  Created by Srikanth Adavalli on 3/24/17.
//  Copyright © 2017 Srikanth Adavalli. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
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

extension UIWindow {
    override open func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            let view1 = UINib(nibName: String("View2"), bundle: nil).instantiate(withOwner: nil, options: nil).first as! View2
            view1.frame = CGRect.init(x: UIScreen.main.bounds.minX, y: UIScreen.main.bounds.maxY-74, width: UIScreen.main.bounds.width, height: 75)
            let window = UIApplication.shared.keyWindow
            window?.addSubview(view1)
            
            let yourTapEvent = UITapGestureRecognizer(target: self, action: #selector(self.yourFunction))
                
            var topVC = UIApplication.shared.keyWindow?.rootViewController
            while((topVC!.presentedViewController) != nil) {
                topVC = topVC!.presentedViewController
            }

            
            topVC?.view.addGestureRecognizer(yourTapEvent)
            
//            view2(view1)
//            view2 = view1
            
//            let nc = NotificationCenter.default // Note that default is now a property, not a method call
//            nc.addObserver(forName:Notification.Name(rawValue:"MyNotification"),
//                           object:nil, queue:nil,
//                           using:catchNotification)
        }
    }
    
    func yourFunction() {
        let window = UIApplication.shared.keyWindow
        window?.viewWithTag(50)?.removeFromSuperview()
    }
}
