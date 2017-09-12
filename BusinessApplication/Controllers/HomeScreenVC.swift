//
//  ViewController.swift
//  BusinessApplication
//
//  Created by Sujanth Sebamalaithasan on 12/9/17.
//  Copyright © 2017 Sujanth Sebamalaithasan. All rights reserved.
//

import UIKit

class HomeScreenVC: UIViewController {
    
    @IBOutlet weak var servicesBtn: RoundedCornerButton!
    @IBOutlet weak var portfolioBtn: RoundedCornerButton!
    @IBOutlet weak var aboutUsBtn: RoundedCornerButton!
    @IBOutlet weak var contactUsBtn: RoundedCornerButton!
    @IBOutlet weak var socialLinksBtn: RoundedCornerButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBAction func optionsBtnPressed(_ sender: UIButton) {
        
        if sender.tag == 0 {
            tabBarController?.selectedIndex = 2
        } else if sender.tag == 1 {
            tabBarController?.selectedIndex = 3
        } else if sender.tag == 2 {
            tabBarController?.selectedIndex = 4
        } else if sender.tag == 3 {
            tabBarController?.selectedIndex = 1
        }
    }
    

}

