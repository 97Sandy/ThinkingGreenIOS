//
//  ajustesVCViewController.swift
//  ThinkingGreenIOS
//
//  Created by Sandy on 5/6/18.
//  Copyright © 2018 Sandy. All rights reserved.
//

import UIKit

class ajustesVCViewController: UIViewController {

    @IBAction func reciclar(_ sender: Any) {
        if ( (sender as AnyObject).currentImage == UIImage(named:"checkBox"))
        
        {(sender as AnyObject).setImage(UIImage(named:"checkBoxNo"), for: .normal)}
            
        else {
            (sender as AnyObject).setImage(UIImage(named:"checkBox"), for: .normal)
        }
    }
    
    
    @IBAction func reducir(_ sender: Any) {
        if ( (sender as AnyObject).currentImage == UIImage(named:"checkBox"))
            
        {(sender as AnyObject).setImage(UIImage(named:"checkBoxNo"), for: .normal)}
            
        else {
            (sender as AnyObject).setImage(UIImage(named:"checkBox"), for: .normal)
        }
    }
    
    
    
    @IBAction func zeroWaste(_ sender: Any) {
        if ( (sender as AnyObject).currentImage == UIImage(named:"checkBox"))
            
        {(sender as AnyObject).setImage(UIImage(named:"checkBoxNo"), for: .normal)}
            
        else {
            (sender as AnyObject).setImage(UIImage(named:"checkBox"), for: .normal)
        }
    }
    
    
    @IBAction func diy(_ sender: Any) {
        if ( (sender as AnyObject).currentImage == UIImage(named:"checkBox"))
            
        {(sender as AnyObject).setImage(UIImage(named:"checkBoxNo"), for: .normal)}
            
        else {
            (sender as AnyObject).setImage(UIImage(named:"checkBox"), for: .normal)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
