//
//  ViewController.swift
//  OpenWebViewURL
//
//  Created by DILIP KOSURI on 25/1/18.
//  Copyright © 2018 DILIP KOSURI. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIWebViewDelegate {

    @IBOutlet weak var myWebView: UIWebView!
    @IBOutlet weak var goBackBtn: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = NSURL(string: "www.yahoo.com")
        let req = NSURLRequest(url: url! as URL)
        goBackBtn.isEnabled = false
        myWebView.delegate = self
        myWebView.loadRequest(req as URLRequest)
    }
    
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        goBackBtn.isEnabled = myWebView.canGoBack
    }
}

