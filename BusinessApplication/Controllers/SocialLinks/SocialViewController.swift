//
//  SocialViewController.swift
//  BusinessApplication
//
//  Created by Sujanth Sebamalaithasan on 19/9/17.
//  Copyright © 2017 Sujanth Sebamalaithasan. All rights reserved.
//

import UIKit

class SocialViewController: UIViewController, UIWebViewDelegate {

    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var actInd: UIActivityIndicatorView!
    
    var socialData: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       self.navigationItem.title = socialData
        
        if navigationItem.title == "Facebook" {
            let url = NSURL(string: "https://www.facebook.com")
            let request = URLRequest(url: url! as URL)
            webView.loadRequest(request)
        }
        if navigationItem.title == "Twitter" {
            let url = NSURL(string: "https://www.twitter.com")
            let request = URLRequest(url: url! as URL)
            webView.loadRequest(request)
        }
        if navigationItem.title == "Google+" {
            let url = NSURL(string: "https://www.google.com")
            let request = URLRequest(url: url! as URL)
            webView.loadRequest(request)
        }
        if navigationItem.title == "LinkedIn" {
            let url = NSURL(string: "https://www.linkedin.com")
            let request = URLRequest(url: url! as URL)
            webView.loadRequest(request)
        }
        if navigationItem.title == "YouTube" {
            let url = NSURL(string: "https://www.youtube.com")
            let request = URLRequest(url: url! as URL)
            webView.loadRequest(request)
        }
        if navigationItem.title == "Website" {
            let url = NSURL(string: "https://www.example.com")
            let request = URLRequest(url: url! as URL)
            webView.loadRequest(request)
        }
            
    }

    func webViewDidStartLoad(_ webView: UIWebView) {
        
        actInd.startAnimating()
    }
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        
        actInd.stopAnimating()
    }

}
