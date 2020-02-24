//
//  CustomTab.swift
//  TabBarController
//
//  Created by Apple MacBook Pro on 2/24/20.
//  Copyright © 2020 Apple MacBook Pro. All rights reserved.
//

import UIKit

class CustomTab: UITabBarController,UITabBarControllerDelegate {
    let SlideInHandlr = SooninSlideInHandler()

    @IBAction func MenuSlide(_ sender: Any) {
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
    override func viewDidLoad() {
        super.viewDidLoad()
SlideInHandlr.selectionDelegate = self
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
extension UITabBarController: SelectionDelegate{
    func didTapSelect(menuSelection: String, description: String) {
        if menuSelection == "Settings"{
            let vc = self.storyboard?.instantiateViewController(identifier: "SttingsViewController") as! SttingsViewController
            self.navigationController?.pushViewController(vc, animated: true)
            
        }
    }
    
    
}
