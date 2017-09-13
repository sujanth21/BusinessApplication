//
//  ServicesViewController.swift
//  BusinessApplication
//
//  Created by Sujanth Sebamalaithasan on 13/9/17.
//  Copyright © 2017 Sujanth Sebamalaithasan. All rights reserved.
//

import UIKit

class ServicesViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var detailDescription: UITextView!
    
    
    var serviceName: String!
    var serviceImage: String!
    var serviceDescription: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.title = serviceName
        self.imageView.image = UIImage(named: serviceImage)
        self.detailDescription.text = serviceDescription
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
