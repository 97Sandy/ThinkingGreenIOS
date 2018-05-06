//
//  consejosWebVC.swift
//  ThinkingGreenIOS
//
//  Created by Sandy on 5/2/18.
//  Copyright © 2018 Sandy. All rights reserved.
//

import UIKit
import WebKit

class consejosWebVC: UIViewController, WKNavigationDelegate {

    @IBOutlet weak var webConsejo: WKWebView!
    @IBOutlet weak var aiConsejo: UIActivityIndicatorView!
    
    @IBAction func consejoLeido(_ sender: Any) {
        puntos = puntos+2
        Toast.long(message: "Consejo Leído +2 puntos", success: "1", failer: "0")
            
    }
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        aiConsejo.stopAnimating()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        webConsejo.navigationDelegate = self
        // Do any additional setup after loading the view.
        
        let dir="http://www.vertebella.com/recicla-neumaticos-y-decora-tu-casa-con-estas-ideas/"
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
