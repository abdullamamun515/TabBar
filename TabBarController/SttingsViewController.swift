//
//  SttingsViewController.swift
//  TabBarController
//
//  Created by Apple MacBook Pro on 2/24/20.
//  Copyright © 2020 Apple MacBook Pro. All rights reserved.
//

import UIKit

class SttingsViewController: UIViewController {

    @IBAction func ColorChange(_ sender: UISwitch) {
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
    override func viewDidLoad() {
        super.viewDidLoad()

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
