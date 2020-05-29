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
         NotificationCenter.default.addObserver(self, selector: #selector(backRootVC), name: NSNotification.Name(rawValue: "ADD_DOCUMENT_OF_DROP_BOX"), object: nil)
        self.view.backgroundColor = .red
        
        tabBarController?.tabBar.isHidden = true

        // Do any additional setup after loading the view.
    }
    
    @objc func backRootVC(notification: NSNotification){
           
        navigationController?.popViewController(animated: true)
           
           do{
               
           }
           catch {
               print(error)
           }
           
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
