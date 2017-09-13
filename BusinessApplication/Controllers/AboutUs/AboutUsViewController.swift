//
//  AboutUsViewController.swift
//  BusinessApplication
//
//  Created by Sujanth Sebamalaithasan on 14/9/17.
//  Copyright © 2017 Sujanth Sebamalaithasan. All rights reserved.
//

import UIKit

class AboutUsViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func contactUsBtnPressed(_ sender: UIButton) {
        
        tabBarController?.selectedIndex = 1
    }
    

}
