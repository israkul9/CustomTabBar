//
//  thirdViewController.swift
//  CustomTabBar
//
//  Created by shishir  on 28/5/20.
//  Copyright © 2020 shishir . All rights reserved.
//

import UIKit

class thirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func goSettVc(_ sender: Any) {
        
        let vc = storyboard?.instantiateViewController(identifier:"SettingViewController" ) as! SettingViewController
        
        navigationController?.pushViewController(vc, animated: true)
    }
    

}
