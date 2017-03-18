//
//  SmileyBehavior.swift
//  DroppingSmiley
//
//  Created by Younoussa Ousmane Abdou on 3/15/17.
//  Copyright © 2017 Younoussa Ousmane Abdou. All rights reserved.
//

import UIKit

class SmileyBehavior: UIDynamicBehavior {
    
//    private lazy var gravity: UIGravityBehavior = {
//        
//        let gravity = UIGravityBehavior()
//        return gravity
//    }()
    
    private lazy var collision: UICollisionBehavior = {
        
        let collision = UICollisionBehavior()
        collision.translatesReferenceBoundsIntoBoundary = true
        return collision
    }()
    
    private lazy var itemBehavior: UIDynamicItemBehavior = {
        
        let itemBehavior = UIDynamicItemBehavior()
        itemBehavior.allowsRotation = true
        return itemBehavior
    }()
    
    override init() {
        super.init()
        
//        addChildBehavior(gravity)
        addChildBehavior(collision)
        addChildBehavior(itemBehavior)
    }
    
    func addItem(item: UIDynamicItem) {
        
//        gravity.addItem(item)
        collision.addItem(item)
        itemBehavior.addItem(item)
    }
    
    
}
