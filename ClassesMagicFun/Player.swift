//
//  Player.swift
//  ClassesMagicFun
//
//  Created by Michael Dippery on 7/29/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Player {
    var name: String
    var wallet: UInt //$ in wallet
    var hand: [Card] //the cards they have in their hand
    var handSize: Int //how many cards
    var handValue: UInt //value of those cards
    var isBlackjack: Bool //do they have 21
    var isBusted: Bool //are they over 21
    
    init(name: String)
    {
        self.name = name
        self.wallet = 0
        self.hand = []
        self.handSize = 0
        self.handValue = 0
        self.isBlackjack = false
        self.isBusted = false
    }
    
    func dealCard(oneCard: Card)
    {
        hand.append(oneCard)
    }
    
    func canPlaceBet(currentBet: UInt) -> Bool //can only place bet if they have the money
    {
        if currentBet < wallet
        {
            return true
        }
        else
        {
            return false
        }
    }
    
    func willHit(currentBet: UInt) -> Bool //can only hit if they have the money and handvalue < 21
    {
        if (currentBet < wallet) && (handValue < 21)
        {
            return true
        }
        else
        {
            return false
        }
    }
    
    func win(amountWon: UInt) //they won money
    {
        wallet = wallet + amountWon
    }
    
    func lose(amountLost: UInt) //they lost money
    {
        wallet = wallet - amountLost
    }
}










