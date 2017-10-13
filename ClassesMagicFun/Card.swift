//
//  Card.swift
//  ClassesMagicFun
//
//  Created by Michael Dippery on 7/29/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Card {
    
    var suit: String
    var rank: String
    var label: String
    var value: Int
    
    init(suit: String, rank: String)
    {
        self.suit = suit //spades, clover, etc.
        self.rank = rank //A, 1, 2, J, etc.
        self.label = ""
        self.rank = ""
        self.value = 0
    }
  
}


