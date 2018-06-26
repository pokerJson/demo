//
//  AppDelegate.swift
//  demo
//
//  Created by dzc on 2018/6/22.
//  Copyright © 2018年 dyy. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {


        window = UIWindow()
        window?.frame = UIScreen.main.bounds
        
        //1 UINavigationController
//        var nav = UINavigationController()
//        nav = UINavigationController.init(rootViewController: ViewController())
//        window?.rootViewController = nav
        
        //2 tablbarcontroller
        let first = FirstViewController()
        let second = SecondViewController()
        let third = ThirdViewController()
        
//        first.tabBarItem.image = UIImage(named: "first")?.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
//        first.tabBarItem.selectedImage = UIImage(named: "firsted")?.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
//        first.title = "第一个"
        creatViewControllers(vc:first,image:"first",selectedImage:"firsred",title:"第1️⃣个")
        creatViewControllers(vc:second,image:"second",selectedImage:"seconded",title:"第2️⃣个")
        creatViewControllers(vc:third,image:"third",selectedImage:"thirded",title:"第3️⃣个")
        
        let tableBarVC = UITabBarController()
        tableBarVC.viewControllers = [UINavigationController(rootViewController: first),
                                      UINavigationController(rootViewController: second),
                                      UINavigationController(rootViewController: third)]
        tableBarVC.selectedIndex = 0
        second.tabBarItem.badgeValue = "3"
        tableBarVC.tabBar.tintColor = UIColor(red: 9/255.0, green: 187/255.0, blue: 7/255.0, alpha: 1)
        window?.rootViewController = tableBarVC
    
        
        window?.makeKeyAndVisible()
        return true
    }

    func creatViewControllers(vc:UIViewController,image:String,selectedImage:String,title:String){
        vc.tabBarItem.image = UIImage(named: image)?.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
        vc.tabBarItem.selectedImage = UIImage(named: selectedImage)?.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
        vc.title = title

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

