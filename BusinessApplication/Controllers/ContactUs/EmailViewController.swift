//
//  EmailViewController.swift
//  BusinessApplication
//
//  Created by Sujanth Sebamalaithasan on 18/9/17.
//  Copyright © 2017 Sujanth Sebamalaithasan. All rights reserved.
//

import UIKit
import MessageUI

class EmailViewController: UIViewController, UITextViewDelegate, MFMailComposeViewControllerDelegate {
    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var messageField: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.title = "Email Us"
    }

    
    @IBAction func sendEmail(_ sender: Any) {
        
        let mailCompose: MFMailComposeViewController = MFMailComposeViewController()
        mailCompose.mailComposeDelegate = self
        
        let recipients = ["abc@123.com"]
        mailCompose.setToRecipients(recipients)
        mailCompose.setSubject(nameField.text! + " - my app")
        mailCompose.setMessageBody("""
                                     Name: \(nameField.text!)
                                     Email: \(emailField.text!)
                                     Message: \(messageField.text!)
                                     """, isHTML: false)
        
        self.present(mailCompose, animated: true
            , completion: nil)
    }
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        
        self.resignFirstResponder()
    }
    
    @IBAction func dismissKeyboard(_ sender: Any) {
        self.resignFirstResponder()
    }
    
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        
        if text == "\n" {
            textView.resignFirstResponder()
            return false
        }
        
        return true
    }
    
    
}
