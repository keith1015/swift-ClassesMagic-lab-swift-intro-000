//
//  Deck.swift
//  ClassesMagicFun
//
//  Created by Michael Dippery on 7/29/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Deck
{
    
    var cards: [Card] //all cards in the deck
    
    init()
    {
        self.cards = []
    }
    
    
    func shuffle()
    {
        cards.shuffleInPlace()
    }
    
    func drawCard() -> Card? //the deck may be empty
    {
        var nextCard: Card? = cards[0]
        
        if var nextCard = nextCard
        {
            return nextCard
        }
        else
        {
            return nil
        }
    }

    
    
    
}
