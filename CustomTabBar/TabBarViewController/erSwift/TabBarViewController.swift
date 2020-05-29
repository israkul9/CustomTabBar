//
//  TabBarViewController.swift
//  CustomTabBar
//
//  Created by shishir  on 28/5/20.
//  Copyright © 2020 shishir . All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTabBar()
    }
    func setupTabBar (){
            
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            
            let categoryVC = (storyboard.instantiateViewController(withIdentifier: "FirstViewController") as! FirstViewController)
            
            let firstItem = UINavigationController.init(rootViewController: categoryVC)
            //firstItem.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 0)
            
            let favoriteVC = (storyboard.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController)
            let secondItem = UINavigationController.init(rootViewController: favoriteVC)
            
            
            let homeVC = (storyboard.instantiateViewController(withIdentifier: "thirdViewController") as! thirdViewController)
            let thirdItem = UINavigationController.init(rootViewController: homeVC)
            
            
           // let downloadVC = (storyboard.instantiateViewController(withIdentifier: "DownloadViewController") as! DownloadViewController)
          //  let forthItem = UINavigationController.init(rootViewController: downloadVC)
            
            
          //  let settingsVC = (storyboard.instantiateViewController(withIdentifier: "SettingsViewController") as! SettingsViewController)
           // let fifthItem = UINavigationController.init(rootViewController: settingsVC)
         

         
            let tabBarItemList = [firstItem, secondItem, thirdItem]
            self.viewControllers = tabBarItemList
        }
    

   

}
