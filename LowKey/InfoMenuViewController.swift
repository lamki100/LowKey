//
//  InfoMenuViewController.swift
//  LowKey
//
//  Created by Katie on 4/17/16.
//  Copyright © 2016 Chapman University. All rights reserved.
//

import UIKit

class InfoMenuViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func backPressed(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func infoButtonPressed(sender: AnyObject) {
        let navVC = storyboard!.instantiateViewControllerWithIdentifier("infoDetail") as! UINavigationController
        let detailVC = navVC.viewControllers[0] as! InfoDetailViewController
        
        let curButtonPressed = sender as! UIButton
        detailVC.curInfo = curButtonPressed.titleLabel!.text!
        
        self.presentViewController(navVC, animated: true, completion: nil)
    }
}
