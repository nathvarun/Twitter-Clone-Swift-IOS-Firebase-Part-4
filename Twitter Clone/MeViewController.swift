//
//  MeViewController.swift
//  
//
//  Created by Varun Nath on 30/08/16.
//
//

import UIKit

class MeViewController: UIViewController {

    @IBOutlet weak var tweetsContainer: UIView!
    @IBOutlet weak var mediaContainer: UIView!
    @IBOutlet weak var likesContainer: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


    @IBAction func showComponents(sender: AnyObject) {
        
        if(sender.selectedSegmentIndex == 0)
        {
            UIView.animateWithDuration(0.5, animations: { 
                
                self.tweetsContainer.alpha = 1
                self.mediaContainer.alpha = 0
                self.likesContainer.alpha = 0
            })
        }
        else if(sender.selectedSegmentIndex == 1)
        {
            UIView.animateWithDuration(0.5, animations: { 
                
                self.mediaContainer.alpha = 1
                self.tweetsContainer.alpha = 0
                self.likesContainer.alpha = 0
                
            })
        }
        else
        {
            UIView.animateWithDuration(0.5, animations: { 
                self.likesContainer.alpha = 1
                self.tweetsContainer.alpha = 0
                self.mediaContainer.alpha = 0
            })
        }
    }
}
