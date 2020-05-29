//
//  ViewController.swift
//  CustomTabBar
//
//  Created by shishir  on 28/5/20.
//  Copyright © 2020 shishir . All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tabbarView: UIView!
    // var tabBarViewController: TabBarViewController
    @IBOutlet weak var thirdView: UIButton!
    @IBOutlet weak var secondView: UIButton!
    @IBOutlet weak var firstView: UIButton!
    
    var tabBarViewController: TabBarViewController!
    override func viewDidLoad() {
        super.viewDidLoad()
       // view.backgroundColor = .clear
        tabbarView.backgroundColor = .lightGray
        setupTabBarController()
        
    }
    
    func setupTabBarController(){
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        tabBarViewController = (storyboard.instantiateViewController(withIdentifier: "TabBarViewController") as! TabBarViewController)
        
        tabBarViewController.view.frame = CGRect(x: 0, y: 0, width: 414, height: 896)
        
        self.view.addSubview(tabBarViewController.view)
        self.addChild(tabBarViewController)
        tabBarViewController.didMove(toParent: parent)

        
        firstView.tag = 0
        firstView.addTarget(self, action: #selector(tabBarItemButtonAction(_:)), for: .touchUpInside)
        
        secondView.tag = 1
        secondView.addTarget(self, action: #selector(tabBarItemButtonAction(_:)), for: .touchUpInside)
        
        thirdView.tag = 2
        thirdView.addTarget(self, action: #selector(tabBarItemButtonAction(_:)), for: .touchUpInside)
        
        
             self.view.bringSubviewToFront(tabbarView)
            self.tabBarViewController.selectedIndex = 0
    }
    
    @objc func tabBarItemButtonAction (_ button:UIButton){
        
        
        self.tabBarViewController.selectedIndex = button.tag
    }
}

