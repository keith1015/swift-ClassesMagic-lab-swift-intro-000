//
//  Dealer.swift
//  ClassesMagicFun
//
//  Created by Michael Dippery on 7/30/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Dealer {
    
    var deck: Deck //stores deck used to play game
    var player: Player //stores person who is playing game
    var house: House //stores the house participating in game
    var winner: Player? //return the winner of the game if the game is over, or nil if the game is still in progress.
    
    init()
    {
        self.deck = Deck()
        self.player = Player(name: "Player")
        self.house = House()
    }
    
    func deal()
    {
        deck.shuffle()
        
        var firstCard = deck.drawCard()
        var secondCard = deck.drawCard()
        
        if var firstCard = firstCard
        {
            player.dealCard(oneCard: firstCard)
        }
        if var secondCard = secondCard
        {
            player.dealCard(oneCard: secondCard)
        }
        
        var firstCardHouse = deck.drawCard()
        var secondCardHouse = deck.drawCard()
        
        if var firstCardHouse = firstCardHouse
        {
            house.dealCard(oneCard: firstCardHouse)
        }
        if var secondCardHouse = secondCardHouse
        {
            house.dealCard(oneCard: secondCardHouse)
        }
        
        if player.handValue == 21
        {
            winner = player
        }
        
        if house.handValue == 21
        {
            winner = house
        }
    }
    
    func turn(player: Player)
    {
        while player.willHit(currentBet: 0) && player.canPlaceBet(currentBet: 0)
        {
            var anotherCard = deck.drawCard()
            
            if var anotherCard = anotherCard
            {
                player.dealCard(oneCard: anotherCard)
            }
        }
    }
    
    func award(bet: UInt)
    {
        if var winner = winner
        {
            if winner === player
            {
                player.win(amountWon: bet)
            }
            else if winner === house
            {
                house.lose(amountLost: bet)
            }
        }
        
    }
    
}
