//
//  House.swift
//  ClassesMagicFun
//
//  Created by Michael Dippery on 7/30/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class House: Player { //the house player, aka, computer
    
    init()
    {
        super.init(name: "House")
    }
    
    override func willHit(currentBet: UInt) -> Bool //house will only hit if hand value < 17
    {
        if handValue < 17
        {
            return true
        }
        else
        {
            return false
        }
    }
    
}
