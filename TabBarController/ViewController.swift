//
//  ViewController.swift
//  TabBarController
//
//  Created by Apple MacBook Pro on 2/23/20.
//  Copyright © 2020 Apple MacBook Pro. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITabBarControllerDelegate {
    
        
    
    let SlideInHandlr = SooninSlideInHandler()

    override func viewDidLoad() {
        super.viewDidLoad()
         SlideInHandlr.selectionDelegate = self
        // Do any additional setup after loading the view.
        tabBarController?.delegate = self
       // self.navigationController?.navigationBar.barTintColor = UIColor(red: 118.0, green: 20.0, blue: 174.0, alpha: 1)
        //self.navigationController?.navigationBar.barTintColor = UIColor(named: "#7614ae")
//        self.navigationController?.navigationBar.barTintColor = UIColor.purple
       // setupTabBar()
    }
   
    @IBAction func SlideShowAction(_ sender: Any) {
        
        var myMenuSetting : [Setting] = []
                 myMenuSetting.append(Setting(name: "Home", imageName: "home"))
                 myMenuSetting.append(Setting(name: "About", imageName: "about"))
                 myMenuSetting.append(Setting(name: "Settings", imageName: "settings"))
                 myMenuSetting.append(Setting(name: "Social", imageName: "social"))
                 myMenuSetting.append(Setting(name: "LogOut", imageName: "login"))
                 SlideInHandlr.settings = myMenuSetting
                 SlideInHandlr.menuBackColor = UIColor.white
                 SlideInHandlr.showSlideInMenu(menuSide: .Left)
    }
    
    @IBAction func Changecolor(_ sender: UISwitch) {
        if (sender.isOn == true){
            self.navigationController?.navigationBar.barTintColor = UIColor.purple
           // self.navigationController?.navigationBar.barTintColor = UIColor(named: "#7614ae")
        
            tabBarController?.tabBar.barTintColor = UIColor.purple
        }else{
            //navigationController?.navigationBar.barTintColor = UIColor(named: "#7614ae")
            //self.navigationController?.navigationBar.barTintColor = UIColor(red: 118.0, green: 20.0, blue: 174.0, alpha: 1)
            self.navigationController?.navigationBar.barTintColor = UIColor.blue
            tabBarController?.tabBar.barTintColor = UIColor.blue
        }
    }
//    func setupTabBar()  {
//    let videoController = UINavigationController(rootViewController: HomeViewController)
//    videoController.tabBarItem.image = UIImage(named: "v_black")
//        videoController.tabBarItem.selectedImage = UIImage(named: "v_white")
//
//        viewControllers = [videoController]
//
//    }
}
extension ViewController: SelectionDelegate{
    func didTapSelect(menuSelection: String, description: String) {
        if menuSelection == "Home"{
            let vc = self.storyboard?.instantiateViewController(identifier: "HomeViewController") as! HomeViewController
            self.navigationController?.pushViewController(vc, animated: true)
            
        }
    }
    
    
}


