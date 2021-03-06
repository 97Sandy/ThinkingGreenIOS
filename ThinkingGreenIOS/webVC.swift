//
//  webVC.swift
//  ThinkingGreenIOS
//
//  Created by Sandy on 5/2/18.
//  Copyright © 2018 Sandy. All rights reserved.
//

import UIKit
import WebKit

class webVC: UIViewController,  WKNavigationDelegate {

    @IBOutlet weak var webConsejo: WKWebView!
    
    @IBOutlet weak var webCargando: UIActivityIndicatorView!
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        webCargando.stopAnimating()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        webConsejo.navigationDelegate = self
        // Do any additional setup after loading the view.
        
        let dir="https://orgranico.com/recopilatorio-11-alternativas-zero-waste/"
        let url = URL (string: dir)!
        let request = URLRequest (url: url)
        webConsejo.load(request)

        // Do any additional setup after loading the view.
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
