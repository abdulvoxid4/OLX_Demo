//
//  AppDelegate.swift
//  OLX1
//
//  Created by Abdulvoxid on 28/03/24.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let vc = ViewController()
        
        let profileVC = UINavigationController(rootViewController: vc )
        let messageVC = UINavigationController(rootViewController: MessageViewController())
        let addVC = UINavigationController(rootViewController: AddViewController())
        let wishListVC = UINavigationController(rootViewController: WishListViewController())
        let mainPageVC = UINavigationController(rootViewController: MainPageViewCantroller())
        
        profileVC.tabBarItem.title = "Профиль"
        profileVC.tabBarItem.image = UIImage(systemName: "person")
        
        messageVC.tabBarItem.title = "Сообщения"
        messageVC.tabBarItem.image = UIImage(systemName: "message")
        
        addVC.tabBarItem.title = "Создать"
        addVC.tabBarItem.image = UIImage(systemName: "plus.circle")
        
        wishListVC.tabBarItem.title = "Избранное"
        wishListVC.tabBarItem.image = UIImage(systemName: "star")
        
        mainPageVC.tabBarItem.title = "Главная"
        mainPageVC.tabBarItem.image = UIImage(systemName: "house")
        
        let tabBarVC = UITabBarController()
        tabBarVC.viewControllers = [mainPageVC, wishListVC, addVC, messageVC, profileVC]
        tabBarVC.selectedIndex = 0
        tabBarVC.tabBar.backgroundColor = .white
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = tabBarVC
        window?.makeKeyAndVisible()
        
        return true
    }


}

