//
//  DeckOfCards.swift
//  FinalProject_CardGame
//
//  Created by Tiger Coder on 12/8/20.
//  Copyright © 2020 Tiger Coder. All rights reserved.
//

import Foundation
import UIKit

enum suit {
    case hearts, diamonds, clubs, spades
}

class DeckOfCards {
    var deck = [Int: suit]()
    var yourCards: Int = 0
    var computerCards: Int = 0
    
    init () {
        deck = [1: .hearts,
                2: .hearts,
                3: .hearts,
                4: .hearts,
                5: .hearts,
                6: .hearts,
                7: .hearts,
                8: .hearts,
                9: .hearts,
                10: .hearts,
                11: .hearts,
                12: .hearts,
                13: .hearts,
                1: .diamonds,
                2: .diamonds,
                3: .diamonds,
                4: .diamonds,
                5: .diamonds,
                6: .diamonds,
                7: .diamonds,
                8: .diamonds,
                9: .diamonds,
                10: .diamonds,
                11: .diamonds,
                12: .diamonds,
                13: .diamonds,
                1: .clubs,
                2: .clubs,
                3: .clubs,
                4: .clubs,
                5: .clubs,
                6: .clubs,
                7: .clubs,
                8: .clubs,
                9: .clubs,
                10: .clubs,
                11: .clubs,
                12: .clubs,
                13: .clubs,
                1: .spades,
                2: .spades,
                3: .spades,
                4: .spades,
                5: .spades,
                6: .spades,
                7: .spades,
                8: .spades,
                9: .spades,
                10: .spades,
                11: .spades,
                12: .spades,
                13: .spades]
        //will print on card Jack for 11, Queen for 12, and King for 13, 1 is the Ace
    }
    
    func drawCard() -> [Int: suit]{
        let num = Int.random(in : 1...13)
        let typeNum = Int.random(in : 1...4)
        var type : suit
        if(typeNum == 4){
            type = .hearts
        } else if(typeNum == 3){
            type = .diamonds
        } else if(typeNum == 2){
            type = .clubs
        } else {
            type = .spades
        }
        deck.remove(at: num, type)
        return[num : type]
    }
    
}
