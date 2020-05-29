//
//  SettingViewController.swift
//  CustomTabBar
//
//  Created by shishir  on 28/5/20.
//  Copyright © 2020 shishir . All rights reserved.
//

import UIKit

class SettingViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .red
        
        tabBarController?.tabBar.isHidden = true

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
