//
//  Smiley.swift
//  DroppingSmiley
//
//  Created by Younoussa Ousmane Abdou on 3/15/17.
//  Copyright © 2017 Younoussa Ousmane Abdou. All rights reserved.
//

import UIKit

class Smiley: UIView {
    
    // Smiley View
    var smileyView: UIView?
    
    // Smiley Size
    let smileyPerRow = 10
    
    private var smileySize: CGSize {
        
        let size = bounds.width / CGFloat(smileyPerRow)
        return CGSize(width: size, height: size)
    }
    
    // Animator
    private lazy var animator: UIDynamicAnimator = {
        
        let animator = UIDynamicAnimator(referenceView: self)
        
        return animator
    }()
    
    // Creating behavior
    private let smileyBehavior = SmileyBehavior()
    
    // Gravity 
    private var gravity = UIGravityBehavior()
    
    
    // Bool that activate animation or not
    var animating: Bool = false {
        didSet {
            
            if animating {
                
                animator.addBehavior(smileyBehavior)
                animator.addBehavior(gravity)
            } else {
                
                animator.removeAllBehaviors()
            }
        }
    }
    
    // Gesture recognizers
    func addSmiley() {
        
        let frame = CGRect(x: 0, y: 0, width: smileySize.width, height: smileySize.height)
        smileyView = UIView(frame: frame)
        addSubview(smileyView!)
        
        // Adding an image (Smiley face)
        let smileyImage = UIImage(named: "smiley")
        let image = UIImageView(image: smileyImage)
        image.frame = CGRect(x: 0, y: 0, width: smileySize.width, height: smileySize.height)
        smileyView?.addSubview(image)
        
        // Add animation
        smileyBehavior.addItem(item: smileyView!)
        gravity.addItem(smileyView!)
    }
}
