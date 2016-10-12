//
//  ViewController.swift
//  YouGiveLoveABadName
//
//  Created by Flatiron School on 6/30/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var contractedHeightConstraint: NSLayoutConstraint!
    @IBOutlet weak var expandedHeightConstraint: NSLayoutConstraint!
    @IBOutlet var imageTapGesture: UITapGestureRecognizer!
    
    var isExpanded: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func imageTapped(_ sender: UITapGestureRecognizer) {
        
        !isExpanded ? expandImageView() : contractImageView()

    }
    
    func expandImageView() {
        
        imageTapGesture.isEnabled = false
        
        UIView.animateKeyframes(withDuration: 0.5, delay: 0.0, options: [], animations: {
            
            UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.2) {
                
                self.contractedHeightConstraint.constant = -75
                self.view.layoutIfNeeded()
                
            }
            
            UIView.addKeyframe(withRelativeStartTime: 0.2, relativeDuration: 0.4) {
                
                self.contractedHeightConstraint.isActive = false
                self.expandedHeightConstraint.isActive = true
                self.expandedHeightConstraint.constant = 200
                self.view.layoutIfNeeded()
                
            }
            
            UIView.addKeyframe(withRelativeStartTime: 0.6, relativeDuration: 0.4) {
                
                self.expandedHeightConstraint.constant = 0
                self.view.layoutIfNeeded()
                
            }
            
        }) { _ in
            
            self.isExpanded = true
            self.imageTapGesture.isEnabled = true
            
        }
        
    }
    
    func contractImageView() {
        
        imageTapGesture.isEnabled = false
        
        UIView.animateKeyframes(withDuration: 0.5, delay: 0.0, options: [], animations: {
            
            UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.2) {
                
                self.expandedHeightConstraint.constant = 200
                self.view.layoutIfNeeded()
                
            }
            
            UIView.addKeyframe(withRelativeStartTime: 0.2, relativeDuration: 0.4) {
                
                self.expandedHeightConstraint.isActive = false
                self.contractedHeightConstraint.isActive = true
                self.contractedHeightConstraint.constant = -75
                self.view.layoutIfNeeded()
                
            }
            
            UIView.addKeyframe(withRelativeStartTime: 0.6, relativeDuration: 0.4) {
                
                self.contractedHeightConstraint.constant = 0
                self.view.layoutIfNeeded()
                
            }
            
        }) { _ in
            
            self.isExpanded = false
            self.imageTapGesture.isEnabled = true
            
        }
        
    }

}

