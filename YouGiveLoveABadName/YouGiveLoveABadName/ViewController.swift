//
//  ViewController.swift
//  YouGiveLoveABadName
//
//  Created by Flatiron School on 6/30/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var bonJoviHeight: NSLayoutConstraint!
    
    

    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func imageTapped(_ sender: UITapGestureRecognizer) {
        
        print(bonJoviHeight.constant)
        print(UIScreen.main.bounds.height)
        
        if bonJoviHeight.constant == 0 {
            UIView.animateKeyframes(withDuration: 1.0, delay: 0.0, options: [], animations: {
                
                
                UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.1, animations: {
                    self.bonJoviHeight.constant = self.bonJoviHeight.constant - 10
                    self.view.layoutIfNeeded()
                    print("#1 CALLED")
                })
                
                UIView.addKeyframe(withRelativeStartTime: 0.1, relativeDuration: 0.2, animations: {
                    self.bonJoviHeight.constant = self.view.frame.height + 200
                    self.view.layoutIfNeeded()
                    print("#2 CALLED")
                })
                
                UIView.addKeyframe(withRelativeStartTime: 0.3, relativeDuration: 0.5, animations: {
                    self.bonJoviHeight.constant = self.view.frame.height - (self.view.frame.height/15)
                    self.view.layoutIfNeeded()
                    print("#3 CALLED")
                })
            
            }, completion: nil)
            
        } else if bonJoviHeight.constant == self.view.frame.height - (self.view.frame.height/15) {
            UIView.animateKeyframes(withDuration: 1.0, delay: 0.0, options: [], animations: {
                
                UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.1, animations: {
                    self.bonJoviHeight.constant = self.view.frame.height + 200
                    self.view.layoutIfNeeded()
                    print("#4 CALLED")
                })
                
                UIView.addKeyframe(withRelativeStartTime: 0.1, relativeDuration: 0.2, animations: {
                    self.bonJoviHeight.constant = -20
                    self.view.layoutIfNeeded()
                    print("#5 CALLED")
                })
                
                UIView.addKeyframe(withRelativeStartTime: 0.3, relativeDuration: 0.2, animations: {
                    self.bonJoviHeight.constant = 0
                    self.view.layoutIfNeeded()
                    print("#6 CALLED")
                })
                
                
            }, completion: nil)
        }
        

    }

}

