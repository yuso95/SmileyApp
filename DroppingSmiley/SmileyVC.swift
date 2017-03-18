//
//  SmileyVC.swift
//  DroppingSmiley
//
//  Created by Younoussa Ousmane Abdou on 3/15/17.
//  Copyright © 2017 Younoussa Ousmane Abdou. All rights reserved.
//

import UIKit

class SmileyVC: UIViewController {
    
    @IBOutlet weak var smileyOutlet: Smiley! {
        didSet {
            
            smileyOutlet.addGestureRecognizer(UITapGestureRecognizer(target: smileyOutlet, action: #selector(Smiley.addSmiley)))
        }
    }

    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        smileyOutlet.animating = true
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        smileyOutlet.animating = false
    }
}
