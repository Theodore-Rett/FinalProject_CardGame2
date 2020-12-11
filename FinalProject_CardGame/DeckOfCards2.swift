//
//  DeckOfCards2.swift
//  FinalProject_CardGame
//
//  Created by Tiger Coder on 12/9/20.
//  Copyright © 2020 Tiger Coder. All rights reserved.
//

import Foundation
import UIKit

enum suit2 {
    case hearts, diamonds, clubs, spades
}

class DeckOfCards{
    var deckNum: [Int]
    var deckSuit: [suit2]
       var yourCards: Int = 0
       var computerCards: Int = 0
    
    init () {
        deckNum = [1,2,3,4,5,6,7,8,9,10,11,12,13,1,2,3,4,5,6,7,8,9,10,11,12,13,1,2,3,4,5,6,7,8,9,10,11,12,13,1,2,3,4,5,6,7,8,9,10,11,12,13]
    //parallel arrays
        deckSuit = [.hearts, .hearts, .hearts, .hearts, .hearts, .hearts, .hearts, .hearts, .hearts, .hearts, .hearts, .hearts, .hearts, .clubs, .clubs, .clubs, .clubs, .clubs, .clubs, .clubs, .clubs, .clubs, .clubs, .clubs, .clubs, .clubs, .diamonds, .diamonds, .diamonds, .diamonds, .diamonds, .diamonds, .diamonds, .diamonds, .diamonds, .diamonds, .diamonds, .diamonds, .diamonds, .spades, .spades, .spades, .spades, .spades, .spades, .spades, .spades, .spades, .spades, .spades, .spades, .spades]
    }
   
    func drawACard() -> (Int, suit2) {
    while (deckNum.isEmpty == false) {
        var rand = Int.random(in: 0...deckNum.count-1 )
        var tempNum: Int = deckNum[rand]
        var tempSuit: suit2 = deckSuit[rand]
        deckNum.remove(at: rand)
        deckSuit.remove(at: rand)
        print(deckNum)
        return (tempNum, tempSuit)
    }
        //have a go to number like 500 if the array is empty
        return (500, .hearts)
    }
}
